
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * irep; } ;
struct TYPE_9__ {struct RClass* target_class; } ;
struct RProc {TYPE_2__ body; TYPE_1__ e; scalar_t__ upper; } ;
struct RClass {int dummy; } ;
struct TYPE_12__ {int proc_class; TYPE_3__* c; } ;
typedef TYPE_4__ mrb_state ;
typedef int mrb_irep ;
struct TYPE_13__ {scalar_t__ proc; struct RClass* target_class; } ;
typedef TYPE_5__ mrb_callinfo ;
struct TYPE_11__ {TYPE_5__* ci; } ;


 struct RClass* MRB_PROC_TARGET_CLASS (scalar_t__) ;
 int MRB_TT_PROC ;
 int mrb_irep_incref (TYPE_4__*,int *) ;
 scalar_t__ mrb_obj_alloc (TYPE_4__*,int ,int ) ;

struct RProc*
mrb_proc_new(mrb_state *mrb, mrb_irep *irep)
{
  struct RProc *p;
  mrb_callinfo *ci = mrb->c->ci;

  p = (struct RProc*)mrb_obj_alloc(mrb, MRB_TT_PROC, mrb->proc_class);
  if (ci) {
    struct RClass *tc = ((void*)0);

    if (ci->proc) {
      tc = MRB_PROC_TARGET_CLASS(ci->proc);
    }
    if (tc == ((void*)0)) {
      tc = ci->target_class;
    }
    p->upper = ci->proc;
    p->e.target_class = tc;
  }
  p->body.irep = irep;
  mrb_irep_incref(mrb, irep);

  return p;
}
