#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_8__ {int /*<<< orphan*/  exc; } ;
typedef  TYPE_2__ mrb_state ;
typedef  int /*<<< orphan*/  h2o_mruby_generator_t ;
struct TYPE_9__ {TYPE_1__* shared; } ;
typedef  TYPE_3__ h2o_mruby_context_t ;
struct TYPE_7__ {TYPE_2__* mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

mrb_value FUNC5(h2o_mruby_context_t *ctx, mrb_value input, mrb_value *receiver, mrb_value args, int *run_again)
{
    mrb_state *mrb = ctx->shared->mrb;
    mrb->exc = FUNC4(FUNC2(args, 0));
    h2o_mruby_generator_t *generator = FUNC0(mrb, FUNC2(args, 1));
    FUNC1(ctx, generator);
    return FUNC3();
}