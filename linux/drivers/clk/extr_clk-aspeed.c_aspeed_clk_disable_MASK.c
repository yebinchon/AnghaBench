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
struct aspeed_clk_gate {long flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  map; int /*<<< orphan*/  clock_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPEED_CLK_STOP_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 long CLK_GATE_SET_TO_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 struct aspeed_clk_gate* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC5(struct clk_hw *hw)
{
	struct aspeed_clk_gate *gate = FUNC4(hw);
	unsigned long flags;
	u32 clk = FUNC0(gate->clock_idx);
	u32 enval;

	FUNC2(gate->lock, flags);

	enval = (gate->flags & CLK_GATE_SET_TO_DISABLE) ? clk : 0;
	FUNC1(gate->map, ASPEED_CLK_STOP_CTRL, clk, enval);

	FUNC3(gate->lock, flags);
}