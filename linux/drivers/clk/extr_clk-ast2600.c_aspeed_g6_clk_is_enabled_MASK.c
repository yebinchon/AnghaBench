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
struct aspeed_clk_gate {scalar_t__ clock_idx; scalar_t__ reset_idx; int flags; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int CLK_GATE_SET_TO_DISABLE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct aspeed_clk_gate*) ; 
 int /*<<< orphan*/  FUNC2 (struct aspeed_clk_gate*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct aspeed_clk_gate* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw)
{
	struct aspeed_clk_gate *gate = FUNC4(hw);
	u32 clk = FUNC0(gate->clock_idx);
	u32 rst = FUNC0(gate->reset_idx);
	u32 reg;
	u32 enval;

	/*
	 * If the IP is in reset, treat the clock as not enabled,
	 * this happens with some clocks such as the USB one when
	 * coming from cold reset. Without this, aspeed_clk_enable()
	 * will fail to lift the reset.
	 */
	if (gate->reset_idx >= 0) {
		FUNC3(gate->map, FUNC2(gate), &reg);

		if (reg & rst)
			return 0;
	}

	FUNC3(gate->map, FUNC1(gate), &reg);

	enval = (gate->flags & CLK_GATE_SET_TO_DISABLE) ? 0 : clk;

	return ((reg & clk) == enval) ? 1 : 0;
}