#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct clk_regmap_mux {unsigned int shift; int /*<<< orphan*/  reg; TYPE_1__* parent_map; scalar_t__ width; } ;
struct clk_regmap {int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {size_t cfg; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct clk_regmap* FUNC2 (struct clk_hw*) ; 
 struct clk_regmap_mux* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, u8 index)
{
	struct clk_regmap_mux *mux = FUNC3(hw);
	struct clk_regmap *clkr = FUNC2(hw);
	unsigned int mask = FUNC0(mux->width + mux->shift - 1, mux->shift);
	unsigned int val;

	if (mux->parent_map)
		index = mux->parent_map[index].cfg;

	val = index;
	val <<= mux->shift;

	return FUNC1(clkr->regmap, mux->reg, mask, val);
}