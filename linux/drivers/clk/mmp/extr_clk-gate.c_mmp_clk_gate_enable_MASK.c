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
struct mmp_clk_gate {int flags; scalar_t__ lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  val_enable; int /*<<< orphan*/  mask; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int MMP_CLK_GATE_NEED_DELAY ; 
 unsigned long FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 struct mmp_clk_gate* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw)
{
	struct mmp_clk_gate *gate = FUNC4(hw);
	unsigned long flags = 0;
	unsigned long rate;
	u32 tmp;

	if (gate->lock)
		FUNC2(gate->lock, flags);

	tmp = FUNC1(gate->reg);
	tmp &= ~gate->mask;
	tmp |= gate->val_enable;
	FUNC6(tmp, gate->reg);

	if (gate->lock)
		FUNC3(gate->lock, flags);

	if (gate->flags & MMP_CLK_GATE_NEED_DELAY) {
		rate = FUNC0(hw);
		/* Need delay 2 cycles. */
		FUNC5(2000000/rate);
	}

	return 0;
}