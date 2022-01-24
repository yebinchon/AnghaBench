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
typedef  int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  regmap; } ;
struct clk_alpha_pll_postdiv {int post_div_shift; int num_post_div; TYPE_1__* post_div_table; int /*<<< orphan*/  width; TYPE_2__ clkr; } ;
struct TYPE_3__ {int val; int div; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_alpha_pll_postdiv*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct clk_alpha_pll_postdiv* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
					unsigned long parent_rate)
{
	struct clk_alpha_pll_postdiv *pll = FUNC3(hw);
	u32 i, div = 1, val;
	int ret;

	ret = FUNC2(pll->clkr.regmap, FUNC1(pll), &val);
	if (ret)
		return ret;

	val >>= pll->post_div_shift;
	val &= FUNC0(pll->width) - 1;

	for (i = 0; i < pll->num_post_div; i++) {
		if (pll->post_div_table[i].val == val) {
			div = pll->post_div_table[i].div;
			break;
		}
	}

	return (parent_rate / div);
}