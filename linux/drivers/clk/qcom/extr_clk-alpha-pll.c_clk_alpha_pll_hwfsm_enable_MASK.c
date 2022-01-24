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
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_alpha_pll* FUNC4 (struct clk_hw*) ; 
 int FUNC5 (struct clk_alpha_pll*) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw)
{
	int ret;
	struct clk_alpha_pll *pll = FUNC4(hw);
	u32 val;

	ret = FUNC2(pll->clkr.regmap, FUNC0(pll), &val);
	if (ret)
		return ret;

	val |= PLL_FSM_ENA;

	if (pll->flags & SUPPORTS_OFFLINE_REQ)
		val &= ~PLL_OFFLINE_REQ;

	ret = FUNC3(pll->clkr.regmap, FUNC0(pll), val);
	if (ret)
		return ret;

	/* Make sure enable request goes through before waiting for update */
	FUNC1();

	return FUNC5(pll);
}