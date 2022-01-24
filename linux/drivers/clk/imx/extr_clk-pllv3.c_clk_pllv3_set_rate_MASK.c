#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct clk_pllv3 {int div_mask; int div_shift; int /*<<< orphan*/  base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct clk_pllv3*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct clk_pllv3* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, unsigned long rate,
		unsigned long parent_rate)
{
	struct clk_pllv3 *pll = FUNC2(hw);
	u32 val, div;

	if (rate == parent_rate * 22)
		div = 1;
	else if (rate == parent_rate * 20)
		div = 0;
	else
		return -EINVAL;

	val = FUNC1(pll->base);
	val &= ~(pll->div_mask << pll->div_shift);
	val |= (div << pll->div_shift);
	FUNC3(val, pll->base);

	return FUNC0(pll);
}