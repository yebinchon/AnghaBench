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
struct clk_regmap_div_data {unsigned int shift; int /*<<< orphan*/  width; int /*<<< orphan*/  flags; int /*<<< orphan*/  table; int /*<<< orphan*/  offset; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 struct clk_regmap_div_data* FUNC1 (struct clk_regmap*) ; 
 unsigned long FUNC2 (struct clk_hw*,unsigned long,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct clk_regmap* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC5(struct clk_hw *hw,
						unsigned long prate)
{
	struct clk_regmap *clk = FUNC4(hw);
	struct clk_regmap_div_data *div = FUNC1(clk);
	unsigned int val;
	int ret;

	ret = FUNC3(clk->map, div->offset, &val);
	if (ret)
		/* Gives a hint that something is wrong */
		return 0;

	val >>= div->shift;
	val &= FUNC0(div->width);
	return FUNC2(hw, prate, val, div->table, div->flags,
				   div->width);
}