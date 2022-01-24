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
typedef  unsigned long u64 ;
typedef  int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  regmap; } ;
struct TYPE_4__ {int shift; int /*<<< orphan*/  width; int /*<<< orphan*/  reg; TYPE_1__ clkr; } ;
struct clk_fepll {int fixed_div; struct clk_div_table* div_table; TYPE_2__ cdiv; } ;
struct clk_div_table {int div; int val; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct clk_fepll*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct clk_fepll* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long
FUNC5(struct clk_hw *hw,
			       unsigned long parent_rate)
{
	struct clk_fepll *pll = FUNC4(hw);
	u32 cdiv, pre_div = 1;
	u64 rate;
	const struct clk_div_table *clkt;

	if (pll->fixed_div) {
		pre_div = pll->fixed_div;
	} else {
		FUNC3(pll->cdiv.clkr.regmap, pll->cdiv.reg, &cdiv);
		cdiv = (cdiv >> pll->cdiv.shift) & (FUNC0(pll->cdiv.width) - 1);

		for (clkt = pll->div_table; clkt->div; clkt++) {
			if (clkt->val == cdiv)
				pre_div = clkt->div;
		}
	}

	rate = FUNC1(pll, parent_rate);
	FUNC2(rate, pre_div);

	return rate;
}