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
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct clk_alpha_pll_postdiv {TYPE_1__ clkr; } ;

/* Variables and functions */
 int FUNC0 (struct clk_alpha_pll_postdiv*) ; 
 int PLL_POST_DIV_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct clk_alpha_pll_postdiv*) ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct clk_alpha_pll_postdiv* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long
FUNC5(struct clk_hw *hw, unsigned long parent_rate)
{
	struct clk_alpha_pll_postdiv *pll = FUNC4(hw);
	u32 ctl;

	FUNC3(pll->clkr.regmap, FUNC1(pll), &ctl);

	ctl >>= PLL_POST_DIV_SHIFT;
	ctl &= FUNC0(pll);

	return parent_rate >> FUNC2(ctl);
}