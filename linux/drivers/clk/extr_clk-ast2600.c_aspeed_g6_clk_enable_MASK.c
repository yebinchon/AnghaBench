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
struct aspeed_clk_gate {scalar_t__ clock_idx; scalar_t__ reset_idx; int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int CLK_GATE_SET_TO_DISABLE ; 
 scalar_t__ FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct aspeed_clk_gate*) ; 
 scalar_t__ FUNC3 (struct aspeed_clk_gate*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 struct aspeed_clk_gate* FUNC8 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct clk_hw *hw)
{
	struct aspeed_clk_gate *gate = FUNC8(hw);
	unsigned long flags;
	u32 clk = FUNC1(gate->clock_idx);
	u32 rst = FUNC1(gate->reset_idx);

	FUNC6(gate->lock, flags);

	if (FUNC0(hw)) {
		FUNC7(gate->lock, flags);
		return 0;
	}

	if (gate->reset_idx >= 0) {
		/* Put IP in reset */
		FUNC5(gate->map, FUNC3(gate), rst);
		/* Delay 100us */
		FUNC9(100);
	}

	/* Enable clock */
	if (gate->flags & CLK_GATE_SET_TO_DISABLE) {
		/* Clock is clear to enable, so use set to clear register */
		FUNC5(gate->map, FUNC2(gate) + 0x04, clk);
	} else {
		/* Clock is set to enable, so use write to set register */
		FUNC5(gate->map, FUNC2(gate), clk);
	}

	if (gate->reset_idx >= 0) {
		/* A delay of 10ms is specified by the ASPEED docs */
		FUNC4(10);
		/* Take IP out of reset */
		FUNC5(gate->map, FUNC3(gate) + 0x4, rst);
	}

	FUNC7(gate->lock, flags);

	return 0;
}