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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct clk_alpha_pll {TYPE_1__ clkr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  PLL_UPDATE ; 
 int PLL_UPDATE_BYPASS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct clk_alpha_pll*) ; 
 int FUNC5 (struct clk_alpha_pll*) ; 
 int FUNC6 (struct clk_alpha_pll*) ; 

__attribute__((used)) static int FUNC7(struct clk_alpha_pll *pll)
{
	int ret;
	u32 mode;

	FUNC1(pll->clkr.regmap, FUNC0(pll), &mode);

	/* Latch the input to the PLL */
	FUNC2(pll->clkr.regmap, FUNC0(pll), PLL_UPDATE,
			   PLL_UPDATE);

	/* Wait for 2 reference cycle before checking ACK bit */
	FUNC3(1);

	/*
	 * PLL will latch the new L, Alpha and freq control word.
	 * PLL will respond by raising PLL_ACK_LATCH output when new programming
	 * has been latched in and PLL is being updated. When
	 * UPDATE_LOGIC_BYPASS bit is not set, PLL_UPDATE will be cleared
	 * automatically by hardware when PLL_ACK_LATCH is asserted by PLL.
	 */
	if (mode & PLL_UPDATE_BYPASS) {
		ret = FUNC6(pll);
		if (ret)
			return ret;

		FUNC2(pll->clkr.regmap, FUNC0(pll), PLL_UPDATE, 0);
	} else {
		ret = FUNC4(pll);
		if (ret)
			return ret;
	}

	ret = FUNC5(pll);
	if (ret)
		return ret;

	/* Wait for PLL output to stabilize */
	FUNC3(10);

	return 0;
}