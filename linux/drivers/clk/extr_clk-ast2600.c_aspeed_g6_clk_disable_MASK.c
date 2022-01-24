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
typedef  int /*<<< orphan*/  u32 ;
struct clk_hw {int dummy; } ;
struct aspeed_clk_gate {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  map; int /*<<< orphan*/  clock_idx; } ;

/* Variables and functions */
 int CLK_GATE_SET_TO_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct aspeed_clk_gate*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 struct aspeed_clk_gate* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC6(struct clk_hw *hw)
{
	struct aspeed_clk_gate *gate = FUNC5(hw);
	unsigned long flags;
	u32 clk = FUNC0(gate->clock_idx);

	FUNC3(gate->lock, flags);

	if (gate->flags & CLK_GATE_SET_TO_DISABLE) {
		FUNC2(gate->map, FUNC1(gate), clk);
	} else {
		/* Use set to clear register */
		FUNC2(gate->map, FUNC1(gate) + 0x4, clk);
	}

	FUNC4(gate->lock, flags);
}