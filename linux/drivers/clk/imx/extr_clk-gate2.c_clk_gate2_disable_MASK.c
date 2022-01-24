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
struct clk_gate2 {scalar_t__* share_count; int bit_idx; int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_gate2* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct clk_hw *hw)
{
	struct clk_gate2 *gate = FUNC4(hw);
	u32 reg;
	unsigned long flags = 0;

	FUNC2(gate->lock, flags);

	if (gate->share_count) {
		if (FUNC0(*gate->share_count == 0))
			goto out;
		else if (--(*gate->share_count) > 0)
			goto out;
	}

	reg = FUNC1(gate->reg);
	reg &= ~(3 << gate->bit_idx);
	FUNC5(reg, gate->reg);

out:
	FUNC3(gate->lock, flags);
}