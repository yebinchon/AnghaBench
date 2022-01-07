
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct union_iterator {long cnt; TYPE_1__** H; } ;
typedef TYPE_1__* iterator_t ;
struct TYPE_4__ {int pos; int jump_to; } ;


 int multiple_union_jump_to ;

iterator_t build_multiple_union_iterator (iterator_t I) {
  struct union_iterator *IU = (struct union_iterator *) I;
  long N = IU->cnt, k;



  I->jump_to = multiple_union_jump_to;
  for (k = N >> 1; k >= 1; k--) {
    iterator_t A = IU->H[k];
    int x = A->pos;
    long i = k;
    while (1) {
      long j = i << 1;
      if (j > N) {
 break;
      }
      if (j < N && IU->H[j]->pos > IU->H[j + 1]->pos) {
 ++j;
      }
      if (x <= IU->H[j]->pos) {
 break;
      }
      IU->H[i] = IU->H[j];
      i = j;
    }
    IU->H[i] = A;
  }
  I->pos = IU->H[1]->pos;
  return I;
}
