#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct dpll_data {int idlest_mask; int /*<<< orphan*/  idlest_reg; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int (* clk_readl ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DPLL_LOCKED ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw_omap*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct clk_hw_omap*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_hw_omap*) ; 
 int FUNC5 (struct clk_hw_omap*) ; 
 int /*<<< orphan*/  FUNC6 (struct clk_hw_omap*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ti_clk_ll_ops ; 

__attribute__((used)) static int FUNC9(struct clk_hw_omap *clk)
{
	const struct dpll_data *dd;
	u8 ai;
	u8 state = 1;
	int r = 0;

	FUNC7("clock: locking DPLL %s\n", FUNC3(&clk->hw));

	dd = clk->dpll_data;
	state <<= FUNC0(dd->idlest_mask);

	/* Check if already locked */
	if ((ti_clk_ll_ops->clk_readl(&dd->idlest_reg) & dd->idlest_mask) ==
	    state)
		goto done;

	ai = FUNC5(clk);

	if (ai)
		FUNC6(clk);

	FUNC1(clk, DPLL_LOCKED);

	r = FUNC2(clk, 1);

	if (ai)
		FUNC4(clk);

done:
	return r;
}