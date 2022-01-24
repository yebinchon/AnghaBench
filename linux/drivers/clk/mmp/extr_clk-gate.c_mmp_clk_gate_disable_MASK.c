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
struct mmp_clk_gate {scalar_t__ lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  val_disable; int /*<<< orphan*/  mask; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 struct mmp_clk_gate* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct clk_hw *hw)
{
	struct mmp_clk_gate *gate = FUNC3(hw);
	unsigned long flags = 0;
	u32 tmp;

	if (gate->lock)
		FUNC1(gate->lock, flags);

	tmp = FUNC0(gate->reg);
	tmp &= ~gate->mask;
	tmp |= gate->val_disable;
	FUNC4(tmp, gate->reg);

	if (gate->lock)
		FUNC2(gate->lock, flags);
}