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
struct aspeed_clk_gate {scalar_t__ clock_idx; scalar_t__ reset_idx; long flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPEED_CLK_STOP_CTRL ; 
 int /*<<< orphan*/  ASPEED_RESET_CTRL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 long CLK_GATE_SET_TO_DISABLE ; 
 scalar_t__ FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 struct aspeed_clk_gate* FUNC6 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw)
{
	struct aspeed_clk_gate *gate = FUNC6(hw);
	unsigned long flags;
	u32 clk = FUNC0(gate->clock_idx);
	u32 rst = FUNC0(gate->reset_idx);
	u32 enval;

	FUNC4(gate->lock, flags);

	if (FUNC1(hw)) {
		FUNC5(gate->lock, flags);
		return 0;
	}

	if (gate->reset_idx >= 0) {
		/* Put IP in reset */
		FUNC3(gate->map, ASPEED_RESET_CTRL, rst, rst);

		/* Delay 100us */
		FUNC7(100);
	}

	/* Enable clock */
	enval = (gate->flags & CLK_GATE_SET_TO_DISABLE) ? 0 : clk;
	FUNC3(gate->map, ASPEED_CLK_STOP_CTRL, clk, enval);

	if (gate->reset_idx >= 0) {
		/* A delay of 10ms is specified by the ASPEED docs */
		FUNC2(10);

		/* Take IP out of reset */
		FUNC3(gate->map, ASPEED_RESET_CTRL, rst, 0);
	}

	FUNC5(gate->lock, flags);

	return 0;
}