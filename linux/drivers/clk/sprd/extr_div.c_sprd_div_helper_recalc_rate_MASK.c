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
struct sprd_div_internal {unsigned int shift; int width; } ;
struct sprd_clk_common {int /*<<< orphan*/  hw; int /*<<< orphan*/  reg; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

unsigned long FUNC2(struct sprd_clk_common *common,
					  const struct sprd_div_internal *div,
					  unsigned long parent_rate)
{
	unsigned long val;
	unsigned int reg;

	FUNC1(common->regmap, common->reg, &reg);
	val = reg >> div->shift;
	val &= (1 << div->width) - 1;

	return FUNC0(&common->hw, parent_rate, val, NULL, 0,
				   div->width);
}