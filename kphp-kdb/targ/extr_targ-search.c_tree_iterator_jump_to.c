
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mult; } ;
struct tree_iterator {int pos; TYPE_1__ TS; int mult; int jump_to; } ;
typedef scalar_t__ iterator_t ;


 int INFTY ;
 int assert (int) ;
 int empty_iterator_jump_to ;
 int tree_subiterator_jump_to (TYPE_1__*,int) ;

int tree_iterator_jump_to (iterator_t I, int req_pos) {
  struct tree_iterator *TI = (struct tree_iterator *) I;
  int res = tree_subiterator_jump_to (&TI->TS, req_pos);
  if (res == INFTY) {
    TI->jump_to = empty_iterator_jump_to;
  } else {
    assert ((TI->mult = TI->TS.mult) > 0);
  }
  return TI->pos = res;
}
