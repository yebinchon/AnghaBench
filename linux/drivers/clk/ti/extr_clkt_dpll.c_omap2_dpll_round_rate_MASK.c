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
struct dpll_data {unsigned long max_rate; unsigned long max_multiplier; unsigned long last_rounded_rate; int min_divider; int max_divider; int last_rounded_m; int last_rounded_n; int /*<<< orphan*/  clk_ref; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int DPLL_FINT_INVALID ; 
 int DPLL_FINT_UNDERFLOW ; 
 int DPLL_MULT_UNDERFLOW ; 
 unsigned long DPLL_SCALE_FACTOR ; 
 int INT_MAX ; 
 long LONG_MAX ; 
 int FUNC0 (struct clk_hw_omap*,int) ; 
 int FUNC1 (int*,int,unsigned long*,unsigned long,unsigned long) ; 
 char* FUNC2 (struct clk_hw*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,unsigned long,...) ; 
 struct clk_hw_omap* FUNC5 (struct clk_hw*) ; 

long FUNC6(struct clk_hw *hw, unsigned long target_rate,
			   unsigned long *parent_rate)
{
	struct clk_hw_omap *clk = FUNC5(hw);
	int m, n, r, scaled_max_m;
	int min_delta_m = INT_MAX, min_delta_n = INT_MAX;
	unsigned long scaled_rt_rp;
	unsigned long new_rate = 0;
	struct dpll_data *dd;
	unsigned long ref_rate;
	long delta;
	long prev_min_delta = LONG_MAX;
	const char *clk_name;

	if (!clk || !clk->dpll_data)
		return ~0;

	dd = clk->dpll_data;

	if (dd->max_rate && target_rate > dd->max_rate)
		target_rate = dd->max_rate;

	ref_rate = FUNC3(dd->clk_ref);
	clk_name = FUNC2(hw);
	FUNC4("clock: %s: starting DPLL round_rate, target rate %lu\n",
		 clk_name, target_rate);

	scaled_rt_rp = target_rate / (ref_rate / DPLL_SCALE_FACTOR);
	scaled_max_m = dd->max_multiplier * DPLL_SCALE_FACTOR;

	dd->last_rounded_rate = 0;

	for (n = dd->min_divider; n <= dd->max_divider; n++) {
		/* Is the (input clk, divider) pair valid for the DPLL? */
		r = FUNC0(clk, n);
		if (r == DPLL_FINT_UNDERFLOW)
			break;
		else if (r == DPLL_FINT_INVALID)
			continue;

		/* Compute the scaled DPLL multiplier, based on the divider */
		m = scaled_rt_rp * n;

		/*
		 * Since we're counting n up, a m overflow means we
		 * can bail out completely (since as n increases in
		 * the next iteration, there's no way that m can
		 * increase beyond the current m)
		 */
		if (m > scaled_max_m)
			break;

		r = FUNC1(&m, n, &new_rate, target_rate,
				    ref_rate);

		/* m can't be set low enough for this n - try with a larger n */
		if (r == DPLL_MULT_UNDERFLOW)
			continue;

		/* skip rates above our target rate */
		delta = target_rate - new_rate;
		if (delta < 0)
			continue;

		if (delta < prev_min_delta) {
			prev_min_delta = delta;
			min_delta_m = m;
			min_delta_n = n;
		}

		FUNC4("clock: %s: m = %d: n = %d: new_rate = %lu\n",
			 clk_name, m, n, new_rate);

		if (delta == 0)
			break;
	}

	if (prev_min_delta == LONG_MAX) {
		FUNC4("clock: %s: cannot round to rate %lu\n",
			 clk_name, target_rate);
		return ~0;
	}

	dd->last_rounded_m = min_delta_m;
	dd->last_rounded_n = min_delta_n;
	dd->last_rounded_rate = target_rate - prev_min_delta;

	return dd->last_rounded_rate;
}