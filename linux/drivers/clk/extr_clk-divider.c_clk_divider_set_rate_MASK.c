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
struct clk_hw {int dummy; } ;
struct clk_divider {int flags; int shift; scalar_t__ lock; int /*<<< orphan*/  width; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int CLK_DIVIDER_HIWORD_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct clk_divider*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_divider*,int) ; 
 int FUNC5 (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,unsigned long) ; 
 struct clk_divider* FUNC8 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC9(struct clk_hw *hw, unsigned long rate,
				unsigned long parent_rate)
{
	struct clk_divider *divider = FUNC8(hw);
	int value;
	unsigned long flags = 0;
	u32 val;

	value = FUNC5(rate, parent_rate, divider->table,
				divider->width, divider->flags);
	if (value < 0)
		return value;

	if (divider->lock)
		FUNC6(divider->lock, flags);
	else
		FUNC0(divider->lock);

	if (divider->flags & CLK_DIVIDER_HIWORD_MASK) {
		val = FUNC2(divider->width) << (divider->shift + 16);
	} else {
		val = FUNC3(divider);
		val &= ~(FUNC2(divider->width) << divider->shift);
	}
	val |= (u32)value << divider->shift;
	FUNC4(divider, val);

	if (divider->lock)
		FUNC7(divider->lock, flags);
	else
		FUNC1(divider->lock);

	return 0;
}