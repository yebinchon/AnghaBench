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
struct dpll_data {int last_rounded_m4xen; unsigned long last_rounded_rate; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 long EINVAL ; 
 unsigned long OMAP4430_REGM4XEN_MULT ; 
 long FUNC0 (struct clk_hw*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dpll_data*) ; 
 struct clk_hw_omap* FUNC2 (struct clk_hw*) ; 

long FUNC3(struct clk_hw *hw,
				    unsigned long target_rate,
				    unsigned long *parent_rate)
{
	struct clk_hw_omap *clk = FUNC2(hw);
	struct dpll_data *dd;
	long r;

	if (!clk || !clk->dpll_data)
		return -EINVAL;

	dd = clk->dpll_data;

	dd->last_rounded_m4xen = 0;

	/*
	 * First try to compute the DPLL configuration for
	 * target rate without using the 4X multiplier.
	 */
	r = FUNC0(hw, target_rate, NULL);
	if (r != ~0)
		goto out;

	/*
	 * If we did not find a valid DPLL configuration, try again, but
	 * this time see if using the 4X multiplier can help. Enabling the
	 * 4X multiplier is equivalent to dividing the target rate by 4.
	 */
	r = FUNC0(hw, target_rate / OMAP4430_REGM4XEN_MULT,
				  NULL);
	if (r == ~0)
		return r;

	dd->last_rounded_rate *= OMAP4430_REGM4XEN_MULT;
	dd->last_rounded_m4xen = 1;

out:
	FUNC1(dd);

	return dd->last_rounded_rate;
}