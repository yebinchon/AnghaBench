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
typedef  size_t u8 ;
typedef  size_t u32 ;
struct lpc32xx_clk_mux {size_t shift; size_t mask; size_t* table; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  clk_regmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 struct lpc32xx_clk_mux* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC3(struct clk_hw *hw)
{
	struct lpc32xx_clk_mux *mux = FUNC2(hw);
	u32 num_parents = FUNC0(hw);
	u32 val;

	FUNC1(clk_regmap, mux->reg, &val);
	val >>= mux->shift;
	val &= mux->mask;

	if (mux->table) {
		u32 i;

		for (i = 0; i < num_parents; i++)
			if (mux->table[i] == val)
				return i;
		return -EINVAL;
	}

	if (val >= num_parents)
		return -EINVAL;

	return val;
}