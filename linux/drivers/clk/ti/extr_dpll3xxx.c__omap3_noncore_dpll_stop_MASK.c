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
typedef  scalar_t__ u8 ;
struct clk_hw_omap {int /*<<< orphan*/  hw; TYPE_1__* dpll_data; } ;
struct TYPE_2__ {int modes; } ;

/* Variables and functions */
 int DPLL_LOW_POWER_STOP ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw_omap*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw_omap*) ; 
 scalar_t__ FUNC3 (struct clk_hw_omap*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct clk_hw_omap *clk)
{
	u8 ai;

	if (!(clk->dpll_data->modes & (1 << DPLL_LOW_POWER_STOP)))
		return -EINVAL;

	FUNC4("clock: stopping DPLL %s\n", FUNC1(&clk->hw));

	ai = FUNC3(clk);

	FUNC0(clk, DPLL_LOW_POWER_STOP);

	if (ai)
		FUNC2(clk);

	return 0;
}