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
typedef  unsigned long u64 ;
struct ccu_data {int dummy; } ;
struct bcm_clk_div {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ LONG_MAX ; 
 scalar_t__ FUNC2 (struct bcm_clk_div*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_clk_div*) ; 
 unsigned long FUNC4 (struct ccu_data*,struct bcm_clk_div*) ; 
 unsigned long FUNC5 (struct bcm_clk_div*,unsigned long) ; 
 unsigned long FUNC6 (struct bcm_clk_div*) ; 
 unsigned long FUNC7 (struct bcm_clk_div*) ; 

__attribute__((used)) static long FUNC8(struct ccu_data *ccu, struct bcm_clk_div *div,
				struct bcm_clk_div *pre_div,
				unsigned long rate, unsigned long parent_rate,
				u64 *scaled_div)
{
	u64 scaled_parent_rate;
	u64 min_scaled_div;
	u64 max_scaled_div;
	u64 best_scaled_div;
	u64 result;

	FUNC0(!FUNC2(div));
	FUNC0(!rate);
	FUNC0(parent_rate > (u64)LONG_MAX);

	/*
	 * If there is a pre-divider, divide the scaled parent rate
	 * by the pre-divider value first.  In this case--to improve
	 * accuracy--scale the parent rate by *both* the pre-divider
	 * value and the divider before actually computing the
	 * result of the pre-divider.
	 *
	 * If there's only one divider, just scale the parent rate.
	 *
	 * For simplicity we treat the pre-divider as fixed (for now).
	 */
	if (FUNC2(pre_div)) {
		u64 scaled_rate;
		u64 scaled_pre_div;

		scaled_rate = FUNC5(pre_div, parent_rate);
		scaled_rate = FUNC5(div, scaled_rate);
		scaled_pre_div = FUNC4(ccu, pre_div);
		scaled_parent_rate = FUNC1(scaled_rate,
							scaled_pre_div);
	} else {
		scaled_parent_rate = FUNC5(div, parent_rate);
	}

	/*
	 * Compute the best possible divider and ensure it is in
	 * range.  A fixed divider can't be changed, so just report
	 * the best we can do.
	 */
	if (!FUNC3(div)) {
		best_scaled_div = FUNC1(scaled_parent_rate,
							rate);
		min_scaled_div = FUNC7(div);
		max_scaled_div = FUNC6(div);
		if (best_scaled_div > max_scaled_div)
			best_scaled_div = max_scaled_div;
		else if (best_scaled_div < min_scaled_div)
			best_scaled_div = min_scaled_div;
	} else {
		best_scaled_div = FUNC4(ccu, div);
	}

	/* OK, figure out the resulting rate */
	result = FUNC1(scaled_parent_rate, best_scaled_div);

	if (scaled_div)
		*scaled_div = best_scaled_div;

	return (long)result;
}