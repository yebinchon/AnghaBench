
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_context {int dummy; } ;
struct RFiber {scalar_t__ tt; struct mrb_context* cxt; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_FIBER_ERROR ;
 scalar_t__ MRB_TT_FIBER ;
 struct RFiber* fiber_ptr (int ) ;
 int mrb_assert (int) ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static struct mrb_context*
fiber_check(mrb_state *mrb, mrb_value fib)
{
  struct RFiber *f = fiber_ptr(fib);

  mrb_assert(f->tt == MRB_TT_FIBER);
  if (!f->cxt) {
    mrb_raise(mrb, E_FIBER_ERROR, "uninitialized Fiber");
  }
  return f->cxt;
}
