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
struct owl_gate_hw {int gate_flags; int /*<<< orphan*/  bit_idx; int /*<<< orphan*/  reg; } ;
struct owl_clk_common {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CLK_GATE_SET_TO_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

int FUNC2(const struct owl_clk_common *common,
		   const struct owl_gate_hw *gate_hw)
{
	u32 reg;

	FUNC1(common->regmap, gate_hw->reg, &reg);

	if (gate_hw->gate_flags & CLK_GATE_SET_TO_DISABLE)
		reg ^= FUNC0(gate_hw->bit_idx);

	return !!(reg & FUNC0(gate_hw->bit_idx));
}