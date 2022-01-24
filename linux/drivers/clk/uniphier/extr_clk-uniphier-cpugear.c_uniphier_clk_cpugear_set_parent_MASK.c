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
struct uniphier_clk_cpugear {unsigned int mask; scalar_t__ regbase; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ UNIPHIER_CLK_CPUGEAR_SET ; 
 scalar_t__ UNIPHIER_CLK_CPUGEAR_UPD ; 
 unsigned int UNIPHIER_CLK_CPUGEAR_UPD_BIT ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,unsigned int,unsigned int) ; 
 struct uniphier_clk_cpugear* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, u8 index)
{
	struct uniphier_clk_cpugear *gear = FUNC2(hw);
	int ret;
	unsigned int val;

	ret = FUNC1(gear->regmap,
				gear->regbase + UNIPHIER_CLK_CPUGEAR_SET,
				gear->mask, index);
	if (ret)
		return ret;

	ret = FUNC1(gear->regmap,
				gear->regbase + UNIPHIER_CLK_CPUGEAR_UPD,
				UNIPHIER_CLK_CPUGEAR_UPD_BIT,
				UNIPHIER_CLK_CPUGEAR_UPD_BIT);
	if (ret)
		return ret;

	return FUNC0(gear->regmap,
				gear->regbase + UNIPHIER_CLK_CPUGEAR_UPD,
				val, !(val & UNIPHIER_CLK_CPUGEAR_UPD_BIT),
				0, 1);
}