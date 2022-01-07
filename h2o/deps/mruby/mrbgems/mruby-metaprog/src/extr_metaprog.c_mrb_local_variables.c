
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {TYPE_6__* irep; } ;
struct RProc {int c; struct RProc* upper; TYPE_3__ body; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
struct TYPE_17__ {TYPE_2__* c; } ;
typedef TYPE_5__ mrb_state ;
struct TYPE_18__ {size_t nlocals; TYPE_4__* lv; } ;
typedef TYPE_6__ mrb_irep ;
struct TYPE_16__ {int name; } ;
struct TYPE_14__ {TYPE_1__* ci; } ;
struct TYPE_13__ {struct RProc* proc; } ;


 scalar_t__ MRB_PROC_CFUNC_P (struct RProc*) ;
 int MRB_PROC_ENV_P (struct RProc*) ;
 int mrb_ary_new (TYPE_5__*) ;
 int mrb_hash_keys (TYPE_5__*,int ) ;
 int mrb_hash_new (TYPE_5__*) ;
 int mrb_hash_set (TYPE_5__*,int ,int ,int ) ;
 char* mrb_sym2name (TYPE_5__*,int ) ;
 int mrb_symbol_value (int ) ;
 int mrb_true_value () ;

__attribute__((used)) static mrb_value
mrb_local_variables(mrb_state *mrb, mrb_value self)
{
  struct RProc *proc;
  mrb_irep *irep;
  mrb_value vars;
  size_t i;

  proc = mrb->c->ci[-1].proc;

  if (MRB_PROC_CFUNC_P(proc)) {
    return mrb_ary_new(mrb);
  }
  vars = mrb_hash_new(mrb);
  while (proc) {
    if (MRB_PROC_CFUNC_P(proc)) break;
    irep = proc->body.irep;
    if (!irep->lv) break;
    for (i = 0; i + 1 < irep->nlocals; ++i) {
      if (irep->lv[i].name) {
        mrb_sym sym = irep->lv[i].name;
        const char *name = mrb_sym2name(mrb, sym);
        switch (name[0]) {
        case '*': case '&':
          break;
        default:
          mrb_hash_set(mrb, vars, mrb_symbol_value(sym), mrb_true_value());
          break;
        }
      }
    }
    if (!MRB_PROC_ENV_P(proc)) break;
    proc = proc->upper;

    if (!proc->c) break;
  }

  return mrb_hash_keys(mrb, vars);
}
