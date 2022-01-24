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
typedef  unsigned long u32 ;
struct clk_pllv3 {unsigned long div_mask; int /*<<< orphan*/  base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct clk_pllv3*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 struct clk_pllv3* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, unsigned long rate,
		unsigned long parent_rate)
{
	struct clk_pllv3 *pll = FUNC2(hw);
	unsigned long min_rate = parent_rate * 54 / 2;
	unsigned long max_rate = parent_rate * 108 / 2;
	u32 val, div;

	if (rate < min_rate || rate > max_rate)
		return -EINVAL;

	div = rate * 2 / parent_rate;
	val = FUNC1(pll->base);
	val &= ~pll->div_mask;
	val |= div;
	FUNC3(val, pll->base);

	return FUNC0(pll);
}