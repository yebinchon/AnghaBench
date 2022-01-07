
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ val; } ;
typedef TYPE_1__ score ;


 int dl_swap (TYPE_1__,TYPE_1__) ;

void partial_score_val_sort (score *sc, int limit, int size) {
  score *begin_stack[32];
  score *end_stack[32];

  begin_stack[0] = sc;
  end_stack[0] = sc + size - 1;

  int depth;
  for (depth = 0; depth >= 0; --depth) {
    score *begin = begin_stack[depth];
    score *end = end_stack[depth];

    while (begin < end) {
      int offset = (end - begin) >> 1;
      dl_swap (*begin, begin[offset]);

      score *i = begin + 1, *j = end;

      while (1) {
        for ( ; i < j && begin->val < i->val; i++) {
        }

        for ( ; j >= i && j->val < begin->val; j--) {
        }

        if (i >= j) {
          break;
        }

        dl_swap (*i, *j);
        ++i;
        --j;
      }

      dl_swap (*begin, *j);

      if (j - begin <= end - j) {
        if (j + 1 < end && j + 1 < sc + limit) {
          begin_stack[depth] = j + 1;
          end_stack[depth++] = end;
        }
        end = j - 1;
      } else {
        if (j - 1 > begin) {
          begin_stack[depth] = begin;
          end_stack[depth++] = j - 1;
        }
        begin = j + 1;
      }
    }
  }
}
