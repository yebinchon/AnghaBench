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
struct regmap {int dummy; } ;
struct clk_alpha_pll {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_alpha_pll*) ; 
 int PLL_OUTCTRL ; 
 int TRION_PLL_RUN ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct clk_alpha_pll *pll,
				struct regmap *regmap)
{
	u32 mode_regval, opmode_regval;
	int ret;

	ret = FUNC2(regmap, FUNC0(pll), &mode_regval);
	ret |= FUNC2(regmap, FUNC1(pll), &opmode_regval);
	if (ret)
		return 0;

	return ((opmode_regval & TRION_PLL_RUN) && (mode_regval & PLL_OUTCTRL));
}