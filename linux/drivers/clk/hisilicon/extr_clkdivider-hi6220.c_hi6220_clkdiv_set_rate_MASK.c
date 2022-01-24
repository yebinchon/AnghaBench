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
struct hi6220_clk_divider {int shift; int mask; scalar_t__ lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  width; int /*<<< orphan*/  table; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_DIVIDER_ROUND_CLOSEST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned long) ; 
 struct hi6220_clk_divider* FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, unsigned long rate,
					unsigned long parent_rate)
{
	int value;
	unsigned long flags = 0;
	u32 data;
	struct hi6220_clk_divider *dclk = FUNC5(hw);

	value = FUNC1(rate, parent_rate, dclk->table,
				dclk->width, CLK_DIVIDER_ROUND_CLOSEST);

	if (dclk->lock)
		FUNC3(dclk->lock, flags);

	data = FUNC2(dclk->reg);
	data &= ~(FUNC0(dclk->width) << dclk->shift);
	data |= value << dclk->shift;
	data |= dclk->mask;

	FUNC6(data, dclk->reg);

	if (dclk->lock)
		FUNC4(dclk->lock, flags);

	return 0;
}