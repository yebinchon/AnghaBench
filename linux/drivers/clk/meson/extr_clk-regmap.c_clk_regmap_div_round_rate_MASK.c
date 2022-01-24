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
struct clk_regmap_div_data {int flags; unsigned int shift; int /*<<< orphan*/  width; int /*<<< orphan*/  table; int /*<<< orphan*/  offset; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CLK_DIVIDER_READ_ONLY ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 struct clk_regmap_div_data* FUNC1 (struct clk_regmap*) ; 
 long FUNC2 (struct clk_hw*,unsigned long,unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 long FUNC3 (struct clk_hw*,unsigned long,unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct clk_regmap* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC6(struct clk_hw *hw, unsigned long rate,
				      unsigned long *prate)
{
	struct clk_regmap *clk = FUNC5(hw);
	struct clk_regmap_div_data *div = FUNC1(clk);
	unsigned int val;
	int ret;

	/* if read only, just return current value */
	if (div->flags & CLK_DIVIDER_READ_ONLY) {
		ret = FUNC4(clk->map, div->offset, &val);
		if (ret)
			/* Gives a hint that something is wrong */
			return 0;

		val >>= div->shift;
		val &= FUNC0(div->width);

		return FUNC2(hw, rate, prate, div->table,
					     div->width, div->flags, val);
	}

	return FUNC3(hw, rate, prate, div->table, div->width,
				  div->flags);
}