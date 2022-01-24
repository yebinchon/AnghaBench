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
typedef  int /*<<< orphan*/  u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct clk_alpha_pll {int flags; TYPE_1__ clkr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLL_FSM_ENA ; 
 int /*<<< orphan*/  FUNC0 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  PLL_OFFLINE_REQ ; 
 int SUPPORTS_OFFLINE_REQ ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_alpha_pll* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_alpha_pll*) ; 
 int FUNC5 (struct clk_alpha_pll*) ; 

__attribute__((used)) static void FUNC6(struct clk_hw *hw)
{
	int ret;
	struct clk_alpha_pll *pll = FUNC3(hw);
	u32 val;

	ret = FUNC1(pll->clkr.regmap, FUNC0(pll), &val);
	if (ret)
		return;

	if (pll->flags & SUPPORTS_OFFLINE_REQ) {
		ret = FUNC2(pll->clkr.regmap, FUNC0(pll),
					 PLL_OFFLINE_REQ, PLL_OFFLINE_REQ);
		if (ret)
			return;

		ret = FUNC5(pll);
		if (ret)
			return;
	}

	/* Disable hwfsm */
	ret = FUNC2(pll->clkr.regmap, FUNC0(pll),
				 PLL_FSM_ENA, 0);
	if (ret)
		return;

	FUNC4(pll);
}