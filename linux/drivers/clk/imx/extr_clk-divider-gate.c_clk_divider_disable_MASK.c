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
struct clk_divider {int shift; int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_divider* FUNC4 (struct clk_hw*) ; 
 struct clk_divider_gate* FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct clk_hw *hw)
{
	struct clk_divider_gate *div_gate = FUNC5(hw);
	struct clk_divider *div = FUNC4(hw);
	unsigned long flags = 0;
	u32 val;

	FUNC2(div->lock, flags);

	/* store the current div val */
	val = FUNC1(div->reg) >> div->shift;
	val &= FUNC0(div->width);
	div_gate->cached_val = val;
	FUNC6(0, div->reg);

	FUNC3(div->lock, flags);
}