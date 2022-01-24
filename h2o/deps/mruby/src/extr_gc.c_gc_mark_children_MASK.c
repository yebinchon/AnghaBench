#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mrb_context {int dummy; } ;
struct TYPE_10__ {scalar_t__ fshared; } ;
struct TYPE_11__ {TYPE_3__ aux; } ;
struct TYPE_12__ {TYPE_4__ heap; } ;
struct RString {TYPE_5__ as; } ;
struct RRange {int dummy; } ;
struct TYPE_8__ {scalar_t__ env; } ;
struct RProc {TYPE_1__ e; scalar_t__ upper; } ;
struct RObject {int dummy; } ;
struct RHash {int dummy; } ;
struct RFiber {struct mrb_context* cxt; } ;
struct REnv {int /*<<< orphan*/ * stack; TYPE_2__* cxt; } ;
struct RClass {scalar_t__ super; } ;
struct RBasic {int tt; scalar_t__ c; int /*<<< orphan*/  gcnext; } ;
struct RArray {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;
struct TYPE_13__ {int /*<<< orphan*/  gray_list; } ;
typedef  TYPE_6__ mrb_gc ;
struct TYPE_9__ {scalar_t__ fib; } ;

/* Variables and functions */
 size_t FUNC0 (struct RArray*) ; 
 int /*<<< orphan*/ * FUNC1 (struct RArray*) ; 
 size_t FUNC2 (struct REnv*) ; 
 int /*<<< orphan*/  FUNC3 (struct REnv*) ; 
 int /*<<< orphan*/  FUNC4 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_FL_CLASS_IS_ORIGIN ; 
#define  MRB_TT_ARRAY 141 
#define  MRB_TT_CLASS 140 
#define  MRB_TT_DATA 139 
#define  MRB_TT_ENV 138 
#define  MRB_TT_EXCEPTION 137 
#define  MRB_TT_FIBER 136 
#define  MRB_TT_HASH 135 
#define  MRB_TT_ICLASS 134 
#define  MRB_TT_MODULE 133 
#define  MRB_TT_OBJECT 132 
#define  MRB_TT_PROC 131 
#define  MRB_TT_RANGE 130 
#define  MRB_TT_SCLASS 129 
#define  MRB_TT_STRING 128 
 int /*<<< orphan*/  FUNC5 (struct RBasic*) ; 
 int /*<<< orphan*/  FUNC6 (struct RBasic*) ; 
 int /*<<< orphan*/  FUNC7 (struct RBasic*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct mrb_context*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct RBasic*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct RHash*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct RObject*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct RClass*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct RRange*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct RBasic*) ; 

__attribute__((used)) static void
FUNC17(mrb_state *mrb, mrb_gc *gc, struct RBasic *obj)
{
  FUNC9(FUNC7(obj));
  FUNC16(obj);
  gc->gray_list = obj->gcnext;
  FUNC10(mrb, (struct RBasic*)obj->c);
  switch (obj->tt) {
  case MRB_TT_ICLASS:
    {
      struct RClass *c = (struct RClass*)obj;
      if (FUNC4(c, MRB_FL_CLASS_IS_ORIGIN))
        FUNC13(mrb, c);
      FUNC10(mrb, (struct RBasic*)((struct RClass*)obj)->super);
    }
    break;

  case MRB_TT_CLASS:
  case MRB_TT_MODULE:
  case MRB_TT_SCLASS:
    {
      struct RClass *c = (struct RClass*)obj;

      FUNC13(mrb, c);
      FUNC10(mrb, (struct RBasic*)c->super);
    }
    /* fall through */

  case MRB_TT_OBJECT:
  case MRB_TT_DATA:
  case MRB_TT_EXCEPTION:
    FUNC12(mrb, (struct RObject*)obj);
    break;

  case MRB_TT_PROC:
    {
      struct RProc *p = (struct RProc*)obj;

      FUNC10(mrb, (struct RBasic*)p->upper);
      FUNC10(mrb, (struct RBasic*)p->e.env);
    }
    break;

  case MRB_TT_ENV:
    {
      struct REnv *e = (struct REnv*)obj;
      mrb_int i, len;

      if (FUNC3(e) && e->cxt && e->cxt->fib) {
        FUNC10(mrb, (struct RBasic*)e->cxt->fib);
      }
      len = FUNC2(e);
      for (i=0; i<len; i++) {
        FUNC15(mrb, e->stack[i]);
      }
    }
    break;

  case MRB_TT_FIBER:
    {
      struct mrb_context *c = ((struct RFiber*)obj)->cxt;

      if (c) FUNC8(mrb, c);
    }
    break;

  case MRB_TT_ARRAY:
    {
      struct RArray *a = (struct RArray*)obj;
      size_t i, e;

      for (i=0,e=FUNC0(a); i<e; i++) {
        FUNC15(mrb, FUNC1(a)[i]);
      }
    }
    break;

  case MRB_TT_HASH:
    FUNC12(mrb, (struct RObject*)obj);
    FUNC11(mrb, (struct RHash*)obj);
    break;

  case MRB_TT_STRING:
    if (FUNC5(obj) && !FUNC6(obj)) {
      struct RString *s = (struct RString*)obj;
      FUNC10(mrb, (struct RBasic*)s->as.heap.aux.fshared);
    }
    break;

  case MRB_TT_RANGE:
    FUNC14(mrb, (struct RRange*)obj);
    break;

  default:
    break;
  }
}