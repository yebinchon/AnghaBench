#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct mrb_context {TYPE_7__* cibase; TYPE_7__* ci; int /*<<< orphan*/  status; } ;
struct RString {int dummy; } ;
struct RRange {int dummy; } ;
struct TYPE_25__ {int /*<<< orphan*/ * irep; } ;
struct RProc {TYPE_4__ body; } ;
struct RObject {int dummy; } ;
struct RHash {int dummy; } ;
struct RFiber {struct mrb_context* cxt; } ;
struct REnv {int const tt; int /*<<< orphan*/ * stack; } ;
struct RData {int /*<<< orphan*/  data; TYPE_5__* type; } ;
struct RClass {int dummy; } ;
struct RBasic {int tt; } ;
struct TYPE_22__ {int /*<<< orphan*/  shared; } ;
struct TYPE_23__ {int /*<<< orphan*/ * ptr; TYPE_1__ aux; } ;
struct TYPE_24__ {TYPE_2__ heap; } ;
struct RArray {TYPE_3__ as; } ;
struct TYPE_27__ {struct mrb_context* root_c; } ;
typedef  TYPE_6__ mrb_state ;
typedef  int /*<<< orphan*/  mrb_irep ;
struct TYPE_28__ {struct REnv* env; } ;
typedef  TYPE_7__ mrb_callinfo ;
struct TYPE_26__ {int /*<<< orphan*/  (* dfree ) (TYPE_6__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RBasic*) ; 
 int /*<<< orphan*/  FUNC1 (struct RBasic*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct REnv*) ; 
 int /*<<< orphan*/  MRB_FIBER_TERMINATED ; 
 int /*<<< orphan*/  FUNC4 (struct RBasic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_FL_CLASS_IS_ORIGIN ; 
 int /*<<< orphan*/  FUNC5 (struct RProc*) ; 
#define  MRB_TT_ARRAY 145 
#define  MRB_TT_CLASS 144 
#define  MRB_TT_DATA 143 
#define  MRB_TT_ENV 142 
#define  MRB_TT_EXCEPTION 141 
#define  MRB_TT_FIBER 140 
#define  MRB_TT_FIXNUM 139 
#define  MRB_TT_FLOAT 138 
 int MRB_TT_FREE ; 
#define  MRB_TT_HASH 137 
#define  MRB_TT_ICLASS 136 
#define  MRB_TT_MODULE 135 
#define  MRB_TT_OBJECT 134 
#define  MRB_TT_PROC 133 
#define  MRB_TT_RANGE 132 
#define  MRB_TT_SCLASS 131 
#define  MRB_TT_STRING 130 
#define  MRB_TT_SYMBOL 129 
#define  MRB_TT_TRUE 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct RBasic*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,struct REnv*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,struct mrb_context*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,struct RHash*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,struct RObject*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,struct RClass*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,struct RRange*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,struct RString*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,struct RBasic*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC20(mrb_state *mrb, struct RBasic *obj, int end)
{
  FUNC2(FUNC6(stderr, "obj_free(%p,tt=%d)\n",obj,obj->tt));
  switch (obj->tt) {
    /* immediate - no mark */
  case MRB_TT_TRUE:
  case MRB_TT_FIXNUM:
  case MRB_TT_SYMBOL:
    /* cannot happen */
    return;

#ifndef MRB_WITHOUT_FLOAT
  case MRB_TT_FLOAT:
#ifdef MRB_WORD_BOXING
    break;
#else
    return;
#endif
#endif

  case MRB_TT_OBJECT:
    FUNC12(mrb, (struct RObject*)obj);
    break;

  case MRB_TT_EXCEPTION:
    FUNC12(mrb, (struct RObject*)obj);
    break;

  case MRB_TT_CLASS:
  case MRB_TT_MODULE:
  case MRB_TT_SCLASS:
    FUNC13(mrb, (struct RClass*)obj);
    FUNC12(mrb, (struct RObject*)obj);
    break;
  case MRB_TT_ICLASS:
    if (FUNC4(obj, MRB_FL_CLASS_IS_ORIGIN))
      FUNC13(mrb, (struct RClass*)obj);
    break;
  case MRB_TT_ENV:
    {
      struct REnv *e = (struct REnv*)obj;

      if (FUNC3(e)) {
        /* cannot be freed */
        e->stack = NULL;
        break;
      }
      FUNC9(mrb, e->stack);
      e->stack = NULL;
    }
    break;

  case MRB_TT_FIBER:
    {
      struct mrb_context *c = ((struct RFiber*)obj)->cxt;

      if (c && c != mrb->root_c) {
        if (!end && c->status != MRB_FIBER_TERMINATED) {
          mrb_callinfo *ci = c->ci;
          mrb_callinfo *ce = c->cibase;

          while (ce <= ci) {
            struct REnv *e = ci->env;
            if (e && !FUNC18(mrb, (struct RBasic*)e) &&
                e->tt == MRB_TT_ENV && FUNC3(e)) {
              FUNC8(mrb, e);
            }
            ci--;
          }
        }
        FUNC10(mrb, c);
      }
    }
    break;

  case MRB_TT_ARRAY:
    if (FUNC1(obj))
      FUNC7(mrb, ((struct RArray*)obj)->as.heap.aux.shared);
    else if (!FUNC0(obj))
      FUNC9(mrb, ((struct RArray*)obj)->as.heap.ptr);
    break;

  case MRB_TT_HASH:
    FUNC12(mrb, (struct RObject*)obj);
    FUNC11(mrb, (struct RHash*)obj);
    break;

  case MRB_TT_STRING:
    FUNC15(mrb, (struct RString*)obj);
    break;

  case MRB_TT_PROC:
    {
      struct RProc *p = (struct RProc*)obj;

      if (!FUNC5(p) && p->body.irep) {
        mrb_irep *irep = p->body.irep;
        if (end) {
          FUNC16(mrb, irep);
        }
        FUNC17(mrb, irep);
      }
    }
    break;

  case MRB_TT_RANGE:
    FUNC14(mrb, ((struct RRange*)obj));
    break;

  case MRB_TT_DATA:
    {
      struct RData *d = (struct RData*)obj;
      if (d->type && d->type->dfree) {
        d->type->dfree(mrb, d->data);
      }
      FUNC12(mrb, (struct RObject*)obj);
    }
    break;

  default:
    break;
  }
  obj->tt = MRB_TT_FREE;
}