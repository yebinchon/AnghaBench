
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mrb_context {int status; scalar_t__ fib; } ;
struct RBasic {int dummy; } ;
struct TYPE_4__ {struct mrb_context* c; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_FIBER_RUNNING ;
 int mrb_write_barrier (TYPE_1__*,struct RBasic*) ;

__attribute__((used)) static void
fiber_switch_context(mrb_state *mrb, struct mrb_context *c)
{
  if (mrb->c->fib) {
    mrb_write_barrier(mrb, (struct RBasic*)mrb->c->fib);
  }
  c->status = MRB_FIBER_RUNNING;
  mrb->c = c;
}
