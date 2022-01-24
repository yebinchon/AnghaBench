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
struct clk_divider_gate {int cached_val; } ;
struct clk_divider {int shift; int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  width; int /*<<< orphan*/  flags; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct clk_hw*) ; 
 int FUNC2 (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_divider* FUNC6 (struct clk_hw*) ; 
 struct clk_divider_gate* FUNC7 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct clk_hw *hw, unsigned long rate,
				unsigned long parent_rate)
{
	struct clk_divider_gate *div_gate = FUNC7(hw);
	struct clk_divider *div = FUNC6(hw);
	unsigned long flags = 0;
	int value;
	u32 val;

	value = FUNC2(rate, parent_rate, div->table,
				div->width, div->flags);
	if (value < 0)
		return value;

	FUNC4(div->lock, flags);

	if (FUNC1(hw)) {
		val = FUNC3(div->reg);
		val &= ~(FUNC0(div->width) << div->shift);
		val |= (u32)value << div->shift;
		FUNC8(val, div->reg);
	} else {
		div_gate->cached_val = value;
	}

	FUNC5(div->lock, flags);

	return 0;
}