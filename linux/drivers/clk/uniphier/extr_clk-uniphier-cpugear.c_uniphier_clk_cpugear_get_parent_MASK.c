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
struct uniphier_clk_cpugear {unsigned int mask; scalar_t__ regbase; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UNIPHIER_CLK_CPUGEAR_STAT ; 
 int FUNC0 (struct clk_hw*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 
 struct uniphier_clk_cpugear* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC3(struct clk_hw *hw)
{
	struct uniphier_clk_cpugear *gear = FUNC2(hw);
	int num_parents = FUNC0(hw);
	int ret;
	unsigned int val;

	ret = FUNC1(gear->regmap,
			  gear->regbase + UNIPHIER_CLK_CPUGEAR_STAT, &val);
	if (ret)
		return ret;

	val &= gear->mask;

	return val < num_parents ? val : -EINVAL;
}