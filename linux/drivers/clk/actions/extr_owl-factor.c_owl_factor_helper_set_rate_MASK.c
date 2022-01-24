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
typedef  int u32 ;
struct owl_factor_hw {int shift; int /*<<< orphan*/  reg; int /*<<< orphan*/  table; } ;
struct owl_clk_common {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int FUNC1 (struct owl_factor_hw const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4(const struct owl_clk_common *common,
				const struct owl_factor_hw *factor_hw,
				unsigned long rate,
				unsigned long parent_rate)
{
	u32 val, reg;

	val = FUNC0(factor_hw->table, rate, parent_rate);

	if (val > FUNC1(factor_hw))
		val = FUNC1(factor_hw);

	FUNC2(common->regmap, factor_hw->reg, &reg);

	reg &= ~(FUNC1(factor_hw) << factor_hw->shift);
	reg |= val << factor_hw->shift;

	FUNC3(common->regmap, factor_hw->reg, reg);

	return 0;
}