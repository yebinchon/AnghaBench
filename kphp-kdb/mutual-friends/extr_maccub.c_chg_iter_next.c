
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i; size_t stack_top; int * stack_state; int * x; } ;
typedef TYPE_1__ chg_iterator ;


 int chg_upd (TYPE_1__*) ;

void chg_iter_next (chg_iterator *it) {
  if (it->x == ((void*)0)) {
    return;
  } else if (it->i == -1) {
    it->stack_state[it->stack_top]++;
    chg_upd (it);
  } else {

    it->i++;
  }

}
