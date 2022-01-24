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
struct clk_hw {int dummy; } ;
struct clk_divider_gate {unsigned int cached_val; } ;
struct clk_divider {unsigned int shift; int /*<<< orphan*/  width; int /*<<< orphan*/  flags; int /*<<< orphan*/  table; int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 unsigned long FUNC2 (struct clk_hw*,unsigned long,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_divider* FUNC6 (struct clk_hw*) ; 
 struct clk_divider_gate* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC8(struct clk_hw *hw,
						  unsigned long parent_rate)
{
	struct clk_divider_gate *div_gate = FUNC7(hw);
	struct clk_divider *div = FUNC6(hw);
	unsigned long flags = 0;
	unsigned int val;

	FUNC4(div->lock, flags);

	if (!FUNC1(hw)) {
		val = div_gate->cached_val;
	} else {
		val = FUNC3(div->reg) >> div->shift;
		val &= FUNC0(div->width);
	}

	FUNC5(div->lock, flags);

	if (!val)
		return 0;

	return FUNC2(hw, parent_rate, val, div->table,
				   div->flags, div->width);
}