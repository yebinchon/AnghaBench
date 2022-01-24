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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct clk_alpha_pll_postdiv {int /*<<< orphan*/  width; TYPE_1__ clkr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CLK_SET_RATE_PARENT ; 
 long FUNC1 (int /*<<< orphan*/ ,int) ; 
 int PLL_POST_DIV_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct clk_alpha_pll_postdiv*) ; 
 int FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_hw*) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct clk_alpha_pll_postdiv* FUNC8 (struct clk_hw*) ; 

__attribute__((used)) static long
FUNC9(struct clk_hw *hw, unsigned long rate,
				    unsigned long *prate)
{
	struct clk_alpha_pll_postdiv *pll = FUNC8(hw);
	u32 ctl, div;

	FUNC7(pll->clkr.regmap, FUNC2(pll), &ctl);

	ctl >>= PLL_POST_DIV_SHIFT;
	ctl &= FUNC0(pll->width) - 1;
	div = 1 << FUNC6(ctl);

	if (FUNC3(hw) & CLK_SET_RATE_PARENT)
		*prate = FUNC5(FUNC4(hw), div * rate);

	return FUNC1((u64)*prate, div);
}