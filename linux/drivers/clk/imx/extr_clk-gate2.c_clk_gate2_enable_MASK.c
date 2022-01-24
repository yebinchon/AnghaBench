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
struct clk_gate2 {int bit_idx; int cgr_val; int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; int /*<<< orphan*/ * share_count; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_gate2* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw)
{
	struct clk_gate2 *gate = FUNC3(hw);
	u32 reg;
	unsigned long flags = 0;

	FUNC1(gate->lock, flags);

	if (gate->share_count && (*gate->share_count)++ > 0)
		goto out;

	reg = FUNC0(gate->reg);
	reg &= ~(3 << gate->bit_idx);
	reg |= gate->cgr_val << gate->bit_idx;
	FUNC4(reg, gate->reg);

out:
	FUNC2(gate->lock, flags);

	return 0;
}