
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct mrb_context {TYPE_7__* cibase; TYPE_7__* ci; int status; } ;
struct RString {int dummy; } ;
struct RRange {int dummy; } ;
struct TYPE_25__ {int * irep; } ;
struct RProc {TYPE_4__ body; } ;
struct RObject {int dummy; } ;
struct RHash {int dummy; } ;
struct RFiber {struct mrb_context* cxt; } ;
struct REnv {int const tt; int * stack; } ;
struct RData {int data; TYPE_5__* type; } ;
struct RClass {int dummy; } ;
struct RBasic {int tt; } ;
struct TYPE_22__ {int shared; } ;
struct TYPE_23__ {int * ptr; TYPE_1__ aux; } ;
struct TYPE_24__ {TYPE_2__ heap; } ;
struct RArray {TYPE_3__ as; } ;
struct TYPE_27__ {struct mrb_context* root_c; } ;
typedef TYPE_6__ mrb_state ;
typedef int mrb_irep ;
struct TYPE_28__ {struct REnv* env; } ;
typedef TYPE_7__ mrb_callinfo ;
struct TYPE_26__ {int (* dfree ) (TYPE_6__*,int ) ;} ;


 int ARY_EMBED_P (struct RBasic*) ;
 int ARY_SHARED_P (struct RBasic*) ;
 int DEBUG (int ) ;
 int MRB_ENV_STACK_SHARED_P (struct REnv*) ;
 int MRB_FIBER_TERMINATED ;
 int MRB_FLAG_TEST (struct RBasic*,int ) ;
 int MRB_FL_CLASS_IS_ORIGIN ;
 int MRB_PROC_CFUNC_P (struct RProc*) ;
 int MRB_TT_FREE ;
 int fprintf (int ,char*,struct RBasic*,int) ;
 int mrb_ary_decref (TYPE_6__*,int ) ;
 int mrb_env_unshare (TYPE_6__*,struct REnv*) ;
 int mrb_free (TYPE_6__*,int *) ;
 int mrb_free_context (TYPE_6__*,struct mrb_context*) ;
 int mrb_gc_free_hash (TYPE_6__*,struct RHash*) ;
 int mrb_gc_free_iv (TYPE_6__*,struct RObject*) ;
 int mrb_gc_free_mt (TYPE_6__*,struct RClass*) ;
 int mrb_gc_free_range (TYPE_6__*,struct RRange*) ;
 int mrb_gc_free_str (TYPE_6__*,struct RString*) ;
 int mrb_irep_cutref (TYPE_6__*,int *) ;
 int mrb_irep_decref (TYPE_6__*,int *) ;
 int mrb_object_dead_p (TYPE_6__*,struct RBasic*) ;
 int stderr ;
 int stub1 (TYPE_6__*,int ) ;

__attribute__((used)) static void
obj_free(mrb_state *mrb, struct RBasic *obj, int end)
{
  DEBUG(fprintf(stderr, "obj_free(%p,tt=%d)\n",obj,obj->tt));
  switch (obj->tt) {

  case 128:
  case 139:
  case 129:

    return;


  case 138:



    return;



  case 134:
    mrb_gc_free_iv(mrb, (struct RObject*)obj);
    break;

  case 141:
    mrb_gc_free_iv(mrb, (struct RObject*)obj);
    break;

  case 144:
  case 135:
  case 131:
    mrb_gc_free_mt(mrb, (struct RClass*)obj);
    mrb_gc_free_iv(mrb, (struct RObject*)obj);
    break;
  case 136:
    if (MRB_FLAG_TEST(obj, MRB_FL_CLASS_IS_ORIGIN))
      mrb_gc_free_mt(mrb, (struct RClass*)obj);
    break;
  case 142:
    {
      struct REnv *e = (struct REnv*)obj;

      if (MRB_ENV_STACK_SHARED_P(e)) {

        e->stack = ((void*)0);
        break;
      }
      mrb_free(mrb, e->stack);
      e->stack = ((void*)0);
    }
    break;

  case 140:
    {
      struct mrb_context *c = ((struct RFiber*)obj)->cxt;

      if (c && c != mrb->root_c) {
        if (!end && c->status != MRB_FIBER_TERMINATED) {
          mrb_callinfo *ci = c->ci;
          mrb_callinfo *ce = c->cibase;

          while (ce <= ci) {
            struct REnv *e = ci->env;
            if (e && !mrb_object_dead_p(mrb, (struct RBasic*)e) &&
                e->tt == 142 && MRB_ENV_STACK_SHARED_P(e)) {
              mrb_env_unshare(mrb, e);
            }
            ci--;
          }
        }
        mrb_free_context(mrb, c);
      }
    }
    break;

  case 145:
    if (ARY_SHARED_P(obj))
      mrb_ary_decref(mrb, ((struct RArray*)obj)->as.heap.aux.shared);
    else if (!ARY_EMBED_P(obj))
      mrb_free(mrb, ((struct RArray*)obj)->as.heap.ptr);
    break;

  case 137:
    mrb_gc_free_iv(mrb, (struct RObject*)obj);
    mrb_gc_free_hash(mrb, (struct RHash*)obj);
    break;

  case 130:
    mrb_gc_free_str(mrb, (struct RString*)obj);
    break;

  case 133:
    {
      struct RProc *p = (struct RProc*)obj;

      if (!MRB_PROC_CFUNC_P(p) && p->body.irep) {
        mrb_irep *irep = p->body.irep;
        if (end) {
          mrb_irep_cutref(mrb, irep);
        }
        mrb_irep_decref(mrb, irep);
      }
    }
    break;

  case 132:
    mrb_gc_free_range(mrb, ((struct RRange*)obj));
    break;

  case 143:
    {
      struct RData *d = (struct RData*)obj;
      if (d->type && d->type->dfree) {
        d->type->dfree(mrb, d->data);
      }
      mrb_gc_free_iv(mrb, (struct RObject*)obj);
    }
    break;

  default:
    break;
  }
  obj->tt = MRB_TT_FREE;
}
