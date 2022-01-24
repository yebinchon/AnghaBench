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
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct clk_alpha_pll_postdiv {TYPE_1__ clkr; } ;

/* Variables and functions */
 int FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (struct clk_alpha_pll_postdiv*) ; 
 int PLL_POST_DIV_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct clk_alpha_pll_postdiv*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct clk_alpha_pll_postdiv* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw, unsigned long rate,
					  unsigned long parent_rate)
{
	struct clk_alpha_pll_postdiv *pll = FUNC4(hw);
	int div;

	/* 16 -> 0xf, 8 -> 0x7, 4 -> 0x3, 2 -> 0x1, 1 -> 0x0 */
	div = FUNC0(parent_rate, rate) - 1;

	return FUNC3(pll->clkr.regmap, FUNC2(pll),
				  FUNC1(pll) << PLL_POST_DIV_SHIFT,
				  div << PLL_POST_DIV_SHIFT);
}