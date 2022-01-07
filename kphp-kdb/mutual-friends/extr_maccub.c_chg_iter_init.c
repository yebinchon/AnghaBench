
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int root; } ;
typedef TYPE_1__ treap ;
struct TYPE_6__ {scalar_t__* x; int i; scalar_t__* stack_state; int * stack_ptr; scalar_t__ stack_top; } ;
typedef TYPE_2__ chg_iterator ;
typedef scalar_t__* changes ;


 int chg_upd (TYPE_2__*) ;

void chg_iter_init (chg_iterator *it, changes x) {
  it->x = x;


  if ((long)x < 0) {
    it->i = 0;
  } else

  if (x) {
    if (x[0] > 0) {
      it->i = 0;
    } else {
      it->i = -1;
      it->stack_top = 0;
      it->stack_ptr[0] = ((treap *)(x))->root;
      it->stack_state[0] = 0;

      chg_upd (it);
    }
  }
}
