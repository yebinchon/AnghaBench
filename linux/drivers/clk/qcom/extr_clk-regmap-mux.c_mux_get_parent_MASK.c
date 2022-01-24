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
typedef  unsigned int u8 ;
struct clk_regmap_mux {unsigned int shift; scalar_t__ parent_map; int /*<<< orphan*/  reg; scalar_t__ width; } ;
struct clk_regmap {int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct clk_hw*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct clk_regmap* FUNC3 (struct clk_hw*) ; 
 struct clk_regmap_mux* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC5(struct clk_hw *hw)
{
	struct clk_regmap_mux *mux = FUNC4(hw);
	struct clk_regmap *clkr = FUNC3(hw);
	unsigned int mask = FUNC0(mux->width - 1, 0);
	unsigned int val;

	FUNC2(clkr->regmap, mux->reg, &val);

	val >>= mux->shift;
	val &= mask;

	if (mux->parent_map)
		return FUNC1(hw, mux->parent_map, val);

	return val;
}