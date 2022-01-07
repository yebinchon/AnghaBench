
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct RProc {int dummy; } ;
typedef int ptrdiff_t ;
typedef int mrb_value ;
struct TYPE_10__ {TYPE_2__* c; scalar_t__ exc; } ;
typedef TYPE_3__ mrb_state ;
struct TYPE_9__ {int * stack; TYPE_1__* cibase; TYPE_1__* ci; } ;
struct TYPE_8__ {scalar_t__ acc; scalar_t__ argc; } ;


 int mrb_exc_raise (TYPE_3__*,int ) ;
 int mrb_exec_irep (TYPE_3__*,int ,struct RProc*) ;
 int mrb_nil_value () ;
 int mrb_obj_value (scalar_t__) ;
 int mrb_top_run (TYPE_3__*,struct RProc*,int ,int ) ;

__attribute__((used)) static mrb_value
exec_irep(mrb_state *mrb, mrb_value self, struct RProc *proc)
{

  mrb->c->ci->argc = 0;
  if (mrb->c->ci->acc < 0) {
    ptrdiff_t cioff = mrb->c->ci - mrb->c->cibase;
    mrb_value ret = mrb_top_run(mrb, proc, self, 0);
    if (mrb->exc) {
      mrb_exc_raise(mrb, mrb_obj_value(mrb->exc));
    }
    mrb->c->ci = mrb->c->cibase + cioff;
    return ret;
  }

  mrb->c->stack[1] = mrb_nil_value();
  return mrb_exec_irep(mrb, self, proc);
}
