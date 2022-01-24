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
struct clk_regmap_gate_data {int flags; int /*<<< orphan*/  bit_idx; int /*<<< orphan*/  offset; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int CLK_GATE_SET_TO_DISABLE ; 
 struct clk_regmap_gate_data* FUNC1 (struct clk_regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct clk_regmap* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct clk_regmap *clk = FUNC3(hw);
	struct clk_regmap_gate_data *gate = FUNC1(clk);
	unsigned int val;

	FUNC2(clk->map, gate->offset, &val);
	if (gate->flags & CLK_GATE_SET_TO_DISABLE)
		val ^= FUNC0(gate->bit_idx);

	val &= FUNC0(gate->bit_idx);

	return val ? 1 : 0;
}