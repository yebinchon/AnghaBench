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
struct owl_divider_hw {unsigned int shift; int width; int /*<<< orphan*/  div_flags; int /*<<< orphan*/  table; int /*<<< orphan*/  reg; } ;
struct owl_clk_common {int /*<<< orphan*/  hw; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

unsigned long FUNC2(struct owl_clk_common *common,
					 const struct owl_divider_hw *div_hw,
					 unsigned long parent_rate)
{
	unsigned long val;
	unsigned int reg;

	FUNC1(common->regmap, div_hw->reg, &reg);
	val = reg >> div_hw->shift;
	val &= (1 << div_hw->width) - 1;

	return FUNC0(&common->hw, parent_rate,
				   val, div_hw->table,
				   div_hw->div_flags,
				   div_hw->width);
}