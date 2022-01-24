#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct mrb_context {int /*<<< orphan*/  status; struct RFiber* fib; TYPE_5__* ci; int /*<<< orphan*/ * stack; TYPE_5__* cibase; TYPE_5__* ciend; int /*<<< orphan*/ * stbase; int /*<<< orphan*/ * stend; int /*<<< orphan*/  member_0; } ;
struct TYPE_14__ {TYPE_2__* irep; } ;
struct RProc {TYPE_3__ body; } ;
struct RFiber {struct mrb_context* cxt; } ;
struct RBasic {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_15__ {TYPE_1__* c; } ;
typedef  TYPE_4__ mrb_state ;
struct TYPE_16__ {int /*<<< orphan*/  pc; struct RProc* proc; int /*<<< orphan*/  target_class; int /*<<< orphan*/ * stackent; } ;
typedef  TYPE_5__ mrb_callinfo ;
struct TYPE_13__ {size_t nregs; int /*<<< orphan*/  iseq; } ;
struct TYPE_12__ {int /*<<< orphan*/ * stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  E_FIBER_ERROR ; 
 int /*<<< orphan*/  E_RUNTIME_ERROR ; 
 int FIBER_CI_INIT_SIZE ; 
 size_t FIBER_STACK_INIT_SIZE ; 
 int /*<<< orphan*/  MRB_FIBER_CREATED ; 
 scalar_t__ FUNC0 (struct RProc*) ; 
 int /*<<< orphan*/  FUNC1 (struct RProc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct RFiber* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,struct RBasic*,struct RBasic*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_4__*,size_t) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 struct RProc* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static mrb_value
FUNC13(mrb_state *mrb, mrb_value self)
{
  static const struct mrb_context mrb_context_zero = { 0 };
  struct RFiber *f = FUNC3(self);
  struct mrb_context *c;
  struct RProc *p;
  mrb_callinfo *ci;
  mrb_value blk;
  size_t slen;

  FUNC7(mrb, "&", &blk);

  if (f->cxt) {
    FUNC12(mrb, E_RUNTIME_ERROR, "cannot initialize twice");
  }
  if (FUNC9(blk)) {
    FUNC12(mrb, E_ARGUMENT_ERROR, "tried to create Fiber object without a block");
  }
  p = FUNC11(blk);
  if (FUNC0(p)) {
    FUNC12(mrb, E_FIBER_ERROR, "tried to create Fiber from C defined method");
  }

  c = (struct mrb_context*)FUNC8(mrb, sizeof(struct mrb_context));
  *c = mrb_context_zero;
  f->cxt = c;

  /* initialize VM stack */
  slen = FIBER_STACK_INIT_SIZE;
  if (p->body.irep->nregs > slen) {
    slen += p->body.irep->nregs;
  }
  c->stbase = (mrb_value *)FUNC8(mrb, slen*sizeof(mrb_value));
  c->stend = c->stbase + slen;
  c->stack = c->stbase;

#ifdef MRB_NAN_BOXING
  {
    mrb_value *p = c->stbase;
    mrb_value *pend = c->stend;

    while (p < pend) {
      SET_NIL_VALUE(*p);
      p++;
    }
  }
#else
  FUNC4(c->stbase, 0, slen * sizeof(mrb_value));
#endif

  /* copy receiver from a block */
  c->stack[0] = mrb->c->stack[0];

  /* initialize callinfo stack */
  c->cibase = (mrb_callinfo *)FUNC5(mrb, FIBER_CI_INIT_SIZE, sizeof(mrb_callinfo));
  c->ciend = c->cibase + FIBER_CI_INIT_SIZE;
  c->ci = c->cibase;
  c->ci->stackent = c->stack;

  /* adjust return callinfo */
  ci = c->ci;
  ci->target_class = FUNC1(p);
  ci->proc = p;
  FUNC6(mrb, (struct RBasic*)FUNC10(self), (struct RBasic*)p);
  ci->pc = p->body.irep->iseq;
  ci[1] = ci[0];
  c->ci++;                      /* push dummy callinfo */

  c->fib = f;
  c->status = MRB_FIBER_CREATED;

  return self;
}