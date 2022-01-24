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
struct regmap {int dummy; } ;
struct clk_pm_cpu {struct regmap* nb_pm_base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned int ARMADA_37XX_NB_TBG_SEL_MASK ; 
 unsigned int ARMADA_37XX_NB_TBG_SEL_OFF ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int LOAD_LEVEL_NR ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,unsigned int,unsigned int,unsigned int) ; 
 struct clk_pm_cpu* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw, u8 index)
{
	struct clk_pm_cpu *pm_cpu = FUNC4(hw);
	struct regmap *base = pm_cpu->nb_pm_base;
	int load_level;

	/*
	 * We set the clock parent only if the DVFS is available but
	 * not enabled.
	 */
	if (FUNC0(base) || FUNC1(base))
		return -EINVAL;

	/* Set the parent clock for all the load level */
	for (load_level = 0; load_level < LOAD_LEVEL_NR; load_level++) {
		unsigned int reg, mask,  val,
			offset = ARMADA_37XX_NB_TBG_SEL_OFF;

		FUNC2(load_level, &reg, &offset);

		val = index << offset;
		mask = ARMADA_37XX_NB_TBG_SEL_MASK << offset;
		FUNC3(base, reg, mask, val);
	}
	return 0;
}