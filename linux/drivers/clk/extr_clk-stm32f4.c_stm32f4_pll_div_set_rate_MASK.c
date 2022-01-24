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
struct stm32f4_pll_div {int /*<<< orphan*/  hw_pll; } ;
struct clk_hw {int dummy; } ;
struct clk_divider {int dummy; } ;
struct TYPE_2__ {int (* set_rate ) (struct clk_hw*,unsigned long,unsigned long) ;} ;

/* Variables and functions */
 TYPE_1__ clk_divider_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct clk_hw*,unsigned long,unsigned long) ; 
 struct clk_divider* FUNC4 (struct clk_hw*) ; 
 struct stm32f4_pll_div* FUNC5 (struct clk_divider*) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, unsigned long rate,
				unsigned long parent_rate)
{
	int pll_state, ret;

	struct clk_divider *div = FUNC4(hw);
	struct stm32f4_pll_div *pll_div = FUNC5(div);

	pll_state = FUNC2(pll_div->hw_pll);

	if (pll_state)
		FUNC0(pll_div->hw_pll);

	ret = clk_divider_ops.set_rate(hw, rate, parent_rate);

	if (pll_state)
		FUNC1(pll_div->hw_pll);

	return ret;
}