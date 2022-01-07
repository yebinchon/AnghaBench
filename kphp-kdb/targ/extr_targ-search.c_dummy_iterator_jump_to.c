
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct binary_operation_iterator {int pos; int jump_to; TYPE_1__* A; } ;
typedef scalar_t__ iterator_t ;
struct TYPE_2__ {int (* jump_to ) (TYPE_1__*,int) ;} ;


 int INFTY ;
 int empty_iterator_jump_to ;
 int stub1 (TYPE_1__*,int) ;

int dummy_iterator_jump_to (iterator_t I, int req_pos) {
  struct binary_operation_iterator *X = (struct binary_operation_iterator *) I;
  int res = X->A->jump_to (X->A, req_pos);
  if (res == INFTY) {
    X->jump_to = empty_iterator_jump_to;
  }
  return X->pos = res;
}
