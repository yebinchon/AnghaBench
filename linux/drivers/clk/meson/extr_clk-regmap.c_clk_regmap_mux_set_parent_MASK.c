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
typedef  int /*<<< orphan*/  u8 ;
struct clk_regmap_mux_data {int mask; int shift; int /*<<< orphan*/  offset; int /*<<< orphan*/  flags; int /*<<< orphan*/  table; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct clk_regmap_mux_data* FUNC0 (struct clk_regmap*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct clk_regmap* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, u8 index)
{
	struct clk_regmap *clk = FUNC3(hw);
	struct clk_regmap_mux_data *mux = FUNC0(clk);
	unsigned int val = FUNC1(mux->table, mux->flags, index);

	return FUNC2(clk->map, mux->offset,
				  mux->mask << mux->shift,
				  val << mux->shift);
}