
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct RProc {struct RProc* upper; } ;
struct REnv {int dummy; } ;
struct TYPE_6__ {TYPE_1__* c; } ;
typedef TYPE_2__ mrb_state ;
struct TYPE_7__ {struct REnv* env; struct RProc* proc; } ;
typedef TYPE_3__ mrb_callinfo ;
struct TYPE_5__ {TYPE_3__* cibase; TYPE_3__* ci; } ;


 struct REnv* MRB_PROC_ENV (struct RProc*) ;

__attribute__((used)) static inline struct REnv*
uvenv(mrb_state *mrb, int up)
{
  struct RProc *proc = mrb->c->ci->proc;
  struct REnv *e;

  while (up--) {
    proc = proc->upper;
    if (!proc) return ((void*)0);
  }
  e = MRB_PROC_ENV(proc);
  if (e) return e;
  else {
    mrb_callinfo *ci = mrb->c->ci;
    mrb_callinfo *cb = mrb->c->cibase;

    while (cb <= ci) {
      if (ci->proc == proc) {
        return ci->env;
      }
      ci--;
    }
  }
  return ((void*)0);
}
