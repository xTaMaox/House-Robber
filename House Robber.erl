-spec rob(Nums :: [integer()]) -> integer().
rob(Nums) ->
    Results = lists:foldr(
        fun(E, Results) ->
            Result = max(nth(2, Results), nth(3, Results)),
            [Result + E| Results]
        end,
        [],
        Nums
    ),
    max(nth(1, Results), nth(2, Results)).

nth(Pos, Results) ->
    case length(Results) of
        N when N < Pos ->
            0;
        _ ->
            lists:nth(Pos, Results)
    end.