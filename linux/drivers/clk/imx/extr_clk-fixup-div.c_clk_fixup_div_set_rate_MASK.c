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
typedef  unsigned int u32 ;
struct clk_hw {int dummy; } ;
struct clk_fixup_div {int /*<<< orphan*/  (* fixup ) (unsigned int*) ;} ;
struct clk_divider {unsigned int shift; int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct clk_divider*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*) ; 
 struct clk_divider* FUNC5 (struct clk_hw*) ; 
 struct clk_fixup_div* FUNC6 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw, unsigned long rate,
			    unsigned long parent_rate)
{
	struct clk_fixup_div *fixup_div = FUNC6(hw);
	struct clk_divider *div = FUNC5(hw);
	unsigned int divider, value;
	unsigned long flags = 0;
	u32 val;

	divider = parent_rate / rate;

	/* Zero based divider */
	value = divider - 1;

	if (value > FUNC0(div))
		value = FUNC0(div);

	FUNC2(div->lock, flags);

	val = FUNC1(div->reg);
	val &= ~(FUNC0(div) << div->shift);
	val |= value << div->shift;
	fixup_div->fixup(&val);
	FUNC7(val, div->reg);

	FUNC3(div->lock, flags);

	return 0;
}