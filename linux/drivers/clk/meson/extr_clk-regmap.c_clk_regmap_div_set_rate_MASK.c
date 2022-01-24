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
struct clk_regmap_div_data {unsigned int shift; int /*<<< orphan*/  width; int /*<<< orphan*/  offset; int /*<<< orphan*/  flags; int /*<<< orphan*/  table; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct clk_regmap_div_data* FUNC1 (struct clk_regmap*) ; 
 int FUNC2 (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct clk_regmap* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw, unsigned long rate,
				   unsigned long parent_rate)
{
	struct clk_regmap *clk = FUNC4(hw);
	struct clk_regmap_div_data *div = FUNC1(clk);
	unsigned int val;
	int ret;

	ret = FUNC2(rate, parent_rate, div->table, div->width,
			      div->flags);
	if (ret < 0)
		return ret;

	val = (unsigned int)ret << div->shift;
	return FUNC3(clk->map, div->offset,
				  FUNC0(div->width) << div->shift, val);
}