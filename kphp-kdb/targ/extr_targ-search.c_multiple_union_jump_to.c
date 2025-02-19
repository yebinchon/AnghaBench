
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct union_iterator {long cnt; int pos; TYPE_1__** H; } ;
struct binary_operation_iterator {TYPE_1__* B; TYPE_1__* A; } ;
typedef TYPE_1__* iterator_t ;
struct TYPE_5__ {int pos; int (* jump_to ) (TYPE_1__*,int) ;} ;


 int INFTY ;
 int assert (int) ;
 int binary_union_iterator_jump_to (TYPE_1__*,int) ;
 int stub1 (TYPE_1__*,int) ;

int multiple_union_jump_to (iterator_t I, int req_pos) {
  struct union_iterator *IU = (struct union_iterator *)I;
  long N = IU->cnt;
  while (IU->H[1]->pos < req_pos) {
    int x = IU->H[1]->jump_to (IU->H[1], req_pos);
    iterator_t A = IU->H[1];
    if (x == INFTY) {
      if (N <= 3) {
 assert (N == 3);
 I->jump_to = binary_union_iterator_jump_to;
 ((struct binary_operation_iterator *)I)->A = IU->H[2];
 ((struct binary_operation_iterator *)I)->B = IU->H[3];
 return binary_union_iterator_jump_to (I, req_pos);
      }
      A = IU->H[N];
      IU->cnt = --N;
      x = A->pos;
    }
    long i = 1;
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
  return IU->pos = IU->H[1]->pos;
}
