#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_5__ {int /*<<< orphan*/  resumers; TYPE_1__* shared; } ;
typedef  TYPE_2__ h2o_mruby_context_t ;
struct TYPE_4__ {int /*<<< orphan*/ * mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

mrb_value FUNC3(h2o_mruby_context_t *ctx, mrb_value input, mrb_value *receiver, mrb_value args, int *run_again)
{
    mrb_state *mrb = ctx->shared->mrb;

    mrb_value resumer = FUNC0(args, 0);

    /*
     * swap receiver to run child fiber immediately, while storing main fiber resumer
     * which will be called after the child fiber is yielded
     */
    FUNC1(mrb, ctx->resumers, *receiver);
    *receiver = resumer;
    *run_again = 1;

    return FUNC2();
}