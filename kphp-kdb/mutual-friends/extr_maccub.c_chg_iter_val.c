
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* x; int i; size_t stack_top; TYPE_1__** stack_ptr; } ;
typedef TYPE_2__ chg_iterator ;
struct TYPE_4__ {int x; } ;


 int assert (int ) ;

int chg_iter_val (chg_iterator *it) {
  if (it->x == ((void*)0)) {
    return 0;
  } else if (it->i == -1) {
    if (it->stack_top >= 0) {
      return it->stack_ptr[it->stack_top]->x;
    } else {
      return 0;
    }
  } else

  if ((long)it->x < 0) {
    if (it->i == 0) {
      return -(long)it->x;
    } else {
      return 0;
    }
  } else

  if (it->x) {
    if (it->i < it->x[0]) {
      return it->x[it->i + 1];
    } else {
      return 0;
    }
  }

  assert (0);
  return 0;
}
