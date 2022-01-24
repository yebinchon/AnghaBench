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
typedef  int u64 ;
struct dpll_data {unsigned int last_rounded_m; unsigned int last_rounded_n; int /*<<< orphan*/  last_rounded_rate; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct omap3_dpll5_settings const*) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw_omap*,int /*<<< orphan*/ ) ; 
 struct clk_hw_omap* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static bool FUNC4(struct clk_hw *hw,
				     unsigned long parent_rate)
{
	struct omap3_dpll5_settings {
		unsigned int rate, m, n;
	};

	static const struct omap3_dpll5_settings precomputed[] = {
		/*
		 * From DM3730 errata advisory 2.1, table 35 and 36.
		 * The N value is increased by 1 compared to the tables as the
		 * errata lists register values while last_rounded_field is the
		 * real divider value.
		 */
		{ 12000000,  80,  0 + 1 },
		{ 13000000, 443,  5 + 1 },
		{ 19200000,  50,  0 + 1 },
		{ 26000000, 443, 11 + 1 },
		{ 38400000,  25,  0 + 1 }
	};

	const struct omap3_dpll5_settings *d;
	struct clk_hw_omap *clk = FUNC3(hw);
	struct dpll_data *dd;
	unsigned int i;

	for (i = 0; i < FUNC0(precomputed); ++i) {
		if (parent_rate == precomputed[i].rate)
			break;
	}

	if (i == FUNC0(precomputed))
		return false;

	d = &precomputed[i];

	/* Update the M, N and rounded rate values and program the DPLL. */
	dd = clk->dpll_data;
	dd->last_rounded_m = d->m;
	dd->last_rounded_n = d->n;
	dd->last_rounded_rate = FUNC1((u64)parent_rate * d->m, d->n);
	FUNC2(clk, 0);

	return true;
}