
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct REnv {TYPE_1__* cxt; int stack; int mid; } ;
struct TYPE_7__ {TYPE_1__* c; } ;
typedef TYPE_2__ mrb_state ;
typedef int mrb_int ;
struct TYPE_8__ {int argc; int mid; } ;
typedef TYPE_3__ mrb_callinfo ;
struct TYPE_6__ {int stack; TYPE_3__* ci; } ;


 int MRB_ENV_SET_BIDX (struct REnv*,int) ;
 int MRB_ENV_SET_STACK_LEN (struct REnv*,int ) ;
 int MRB_TT_ENV ;
 scalar_t__ mrb_obj_alloc (TYPE_2__*,int ,int *) ;

__attribute__((used)) static struct REnv*
env_new(mrb_state *mrb, mrb_int nlocals)
{
  struct REnv *e;
  mrb_callinfo *ci = mrb->c->ci;
  int bidx;

  e = (struct REnv*)mrb_obj_alloc(mrb, MRB_TT_ENV, ((void*)0));
  MRB_ENV_SET_STACK_LEN(e, nlocals);
  bidx = ci->argc;
  if (ci->argc < 0) bidx = 2;
  else bidx += 1;
  MRB_ENV_SET_BIDX(e, bidx);
  e->mid = ci->mid;
  e->stack = mrb->c->stack;
  e->cxt = mrb->c;

  return e;
}
