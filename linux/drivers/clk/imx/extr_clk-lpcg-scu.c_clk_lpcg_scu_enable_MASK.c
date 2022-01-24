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
struct clk_lpcg_scu {int bit_idx; int /*<<< orphan*/  reg; scalar_t__ hw_gate; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CLK_GATE_SCU_LPCG_HW_SEL ; 
 int CLK_GATE_SCU_LPCG_MASK ; 
 int CLK_GATE_SCU_LPCG_SW_SEL ; 
 int /*<<< orphan*/  imx_lpcg_scu_lock ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct clk_lpcg_scu* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw)
{
	struct clk_lpcg_scu *clk = FUNC3(hw);
	unsigned long flags;
	u32 reg, val;

	FUNC1(&imx_lpcg_scu_lock, flags);

	reg = FUNC0(clk->reg);
	reg &= ~(CLK_GATE_SCU_LPCG_MASK << clk->bit_idx);

	val = CLK_GATE_SCU_LPCG_SW_SEL;
	if (clk->hw_gate)
		val |= CLK_GATE_SCU_LPCG_HW_SEL;

	reg |= val << clk->bit_idx;
	FUNC4(reg, clk->reg);

	FUNC2(&imx_lpcg_scu_lock, flags);

	return 0;
}