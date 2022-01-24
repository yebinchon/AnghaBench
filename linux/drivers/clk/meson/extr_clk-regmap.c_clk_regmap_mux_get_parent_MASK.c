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
typedef  int u8 ;
struct clk_regmap_mux_data {unsigned int shift; unsigned int mask; int /*<<< orphan*/  flags; int /*<<< orphan*/  table; int /*<<< orphan*/  offset; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct clk_regmap_mux_data* FUNC0 (struct clk_regmap*) ; 
 int FUNC1 (struct clk_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct clk_regmap* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC4(struct clk_hw *hw)
{
	struct clk_regmap *clk = FUNC3(hw);
	struct clk_regmap_mux_data *mux = FUNC0(clk);
	unsigned int val;
	int ret;

	ret = FUNC2(clk->map, mux->offset, &val);
	if (ret)
		return ret;

	val >>= mux->shift;
	val &= mux->mask;
	return FUNC1(hw, mux->table, mux->flags, val);
}