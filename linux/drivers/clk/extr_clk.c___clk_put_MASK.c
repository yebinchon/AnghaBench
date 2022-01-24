#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct module {int dummy; } ;
struct clk {int exclusive_count; scalar_t__ min_rate; scalar_t__ max_rate; TYPE_1__* core; int /*<<< orphan*/  clks_node; } ;
struct TYPE_3__ {scalar_t__ req_rate; int /*<<< orphan*/  ref; struct module* owner; int /*<<< orphan*/  protect_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __clk_release ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct clk*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct module*) ; 

void FUNC11(struct clk *clk)
{
	struct module *owner;

	if (!clk || FUNC2(FUNC0(clk)))
		return;

	FUNC5();

	/*
	 * Before calling clk_put, all calls to clk_rate_exclusive_get() from a
	 * given user should be balanced with calls to clk_rate_exclusive_put()
	 * and by that same consumer
	 */
	if (FUNC1(clk->exclusive_count)) {
		/* We voiced our concern, let's sanitize the situation */
		clk->core->protect_count -= (clk->exclusive_count - 1);
		FUNC3(clk->core);
		clk->exclusive_count = 0;
	}

	FUNC8(&clk->clks_node);
	if (clk->min_rate > clk->core->req_rate ||
	    clk->max_rate < clk->core->req_rate)
		FUNC4(clk->core, clk->core->req_rate);

	owner = clk->core->owner;
	FUNC9(&clk->core->ref, __clk_release);

	FUNC6();

	FUNC10(owner);

	FUNC7(clk);
}