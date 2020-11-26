% определить предикат mrg(L1, L2, R) который для двух отсортированных списков L1 и L2 
% определяет список R, составленный из этих элементов

mrg([], [], []).
mrg([], L2, L2).
mrg(L1, [], L1).

mrg([Head1|L1], [Head2|L2], [Head2|R]):- 
   Head1 > Head2, mrg([Head1|L1], L2, R).

mrg([Head1|L1], [Head2|L2], [Head1|R]):- 
   Head1 =< Head2, mrg(L1, [Head2|L2], R).

% mrg([-200, -124, 20, 33], [-2, 0, 4, 20, 37], Result).
% Result = [-200, -124, -2, 0, 4, 20, 20, 33, 37] .
