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
struct cp110_gate_clk {int /*<<< orphan*/  bit_idx; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CP110_PM_CLOCK_GATING_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct cp110_gate_clk* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct cp110_gate_clk *gate = FUNC2(hw);
	u32 val;

	FUNC1(gate->regmap, CP110_PM_CLOCK_GATING_REG, &val);

	return val & FUNC0(gate->bit_idx);
}