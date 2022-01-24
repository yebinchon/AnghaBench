#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dpll_data {int modes; int /*<<< orphan*/  clk_ref; int /*<<< orphan*/  clk_bypass; } ;
struct clk_rate_request {scalar_t__ rate; scalar_t__ best_parent_rate; int /*<<< orphan*/  best_parent_hw; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int DPLL_LOW_POWER_BYPASS ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct clk_hw*,scalar_t__,scalar_t__*) ; 
 struct clk_hw_omap* FUNC2 (struct clk_hw*) ; 

int FUNC3(struct clk_hw *hw,
				      struct clk_rate_request *req)
{
	struct clk_hw_omap *clk = FUNC2(hw);
	struct dpll_data *dd;

	if (!req->rate)
		return -EINVAL;

	dd = clk->dpll_data;
	if (!dd)
		return -EINVAL;

	if (FUNC0(dd->clk_bypass) == req->rate &&
	    (dd->modes & (1 << DPLL_LOW_POWER_BYPASS))) {
		req->best_parent_hw = dd->clk_bypass;
	} else {
		req->rate = FUNC1(hw, req->rate,
					  &req->best_parent_rate);
		req->best_parent_hw = dd->clk_ref;
	}

	req->best_parent_rate = req->rate;

	return 0;
}