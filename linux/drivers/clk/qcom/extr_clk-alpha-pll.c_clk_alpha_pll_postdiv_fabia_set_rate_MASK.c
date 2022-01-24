#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  regmap; } ;
struct clk_alpha_pll_postdiv {int num_post_div; int post_div_shift; int /*<<< orphan*/  width; TYPE_2__ clkr; TYPE_1__* post_div_table; } ;
struct TYPE_3__ {int div; int val; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_alpha_pll_postdiv*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_alpha_pll_postdiv*) ; 
 int PLL_VOTE_FSM_ENA ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct clk_alpha_pll_postdiv* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw,
				unsigned long rate, unsigned long parent_rate)
{
	struct clk_alpha_pll_postdiv *pll = FUNC6(hw);
	int i, val = 0, div, ret;

	/*
	 * If the PLL is in FSM mode, then treat set_rate callback as a
	 * no-operation.
	 */
	ret = FUNC4(pll->clkr.regmap, FUNC2(pll), &val);
	if (ret)
		return ret;

	if (val & PLL_VOTE_FSM_ENA)
		return 0;

	div = FUNC1(parent_rate, rate);
	for (i = 0; i < pll->num_post_div; i++) {
		if (pll->post_div_table[i].div == div) {
			val = pll->post_div_table[i].val;
			break;
		}
	}

	return FUNC5(pll->clkr.regmap, FUNC3(pll),
				(FUNC0(pll->width) - 1) << pll->post_div_shift,
				val << pll->post_div_shift);
}