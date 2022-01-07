
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mrb_context {TYPE_1__* cibase; TYPE_1__* ci; } ;
typedef int mrb_state ;
struct TYPE_2__ {scalar_t__ acc; } ;
typedef TYPE_1__ mrb_callinfo ;


 int E_FIBER_ERROR ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static void
fiber_check_cfunc(mrb_state *mrb, struct mrb_context *c)
{
  mrb_callinfo *ci;

  for (ci = c->ci; ci >= c->cibase; ci--) {
    if (ci->acc < 0) {
      mrb_raise(mrb, E_FIBER_ERROR, "can't cross C function boundary");
    }
  }
}
