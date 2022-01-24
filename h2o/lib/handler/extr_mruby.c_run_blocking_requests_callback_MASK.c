#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_9__ {int /*<<< orphan*/  exc; } ;
typedef  TYPE_2__ mrb_state ;
typedef  scalar_t__ mrb_int ;
struct TYPE_10__ {int /*<<< orphan*/  blocking_reqs; TYPE_1__* shared; } ;
typedef  TYPE_3__ h2o_mruby_context_t ;
struct TYPE_8__ {TYPE_2__* mrb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

mrb_value FUNC8(h2o_mruby_context_t *ctx, mrb_value input, mrb_value *receiver, mrb_value args,
                                         int *run_again)
{
    mrb_state *mrb = ctx->shared->mrb;

    mrb_value exc = FUNC4(args, 0);
    if (!FUNC5(exc)) {
        mrb->exc = FUNC7(exc);
        FUNC2(ctx, NULL);
    }

    mrb_int i;
    mrb_int len = FUNC0(ctx->blocking_reqs);
    for (i = 0; i != len; ++i) {
        mrb_value blocking_req = FUNC4(ctx->blocking_reqs, i);
        mrb_value blocking_req_resumer = FUNC4(blocking_req, 0);
        mrb_value blocking_req_input = FUNC4(blocking_req, 1);
        FUNC1(ctx, blocking_req_resumer, blocking_req_input, NULL);
    }
    FUNC3(mrb, ctx->blocking_reqs);

    return FUNC6();
}