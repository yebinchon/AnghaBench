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
struct regmap {int dummy; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {struct regmap* regmap; } ;
struct clk_alpha_pll_postdiv {int num_post_div; TYPE_1__* post_div_table; TYPE_2__ clkr; } ;
struct TYPE_3__ {int div; int val; } ;

/* Variables and functions */
 int FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (struct clk_alpha_pll_postdiv*) ; 
 int PLL_POST_DIV_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct clk_alpha_pll_postdiv*) ; 
 int FUNC3 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 struct clk_alpha_pll_postdiv* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int
FUNC5(struct clk_hw *hw, unsigned long rate,
			       unsigned long parent_rate)
{
	struct clk_alpha_pll_postdiv *pll = FUNC4(hw);
	struct regmap *regmap = pll->clkr.regmap;
	int i, val = 0, div;

	div = FUNC0(parent_rate, rate);
	for (i = 0; i < pll->num_post_div; i++) {
		if (pll->post_div_table[i].div == div) {
			val = pll->post_div_table[i].val;
			break;
		}
	}

	return FUNC3(regmap, FUNC2(pll),
				  FUNC1(pll) << PLL_POST_DIV_SHIFT,
				  val << PLL_POST_DIV_SHIFT);
}