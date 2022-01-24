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
typedef  scalar_t__ u32 ;
struct regmap {int dummy; } ;
struct clk_alpha_pll {int dummy; } ;
struct alpha_pll_config {scalar_t__ post_div_val; scalar_t__ post_div_mask; scalar_t__ config_ctl_val; scalar_t__ alpha; scalar_t__ l; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_alpha_pll*) ; 
 scalar_t__ PLL_RESET_N ; 
 scalar_t__ PLL_UPDATE_BYPASS ; 
 int /*<<< orphan*/  FUNC4 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC7(struct clk_alpha_pll *pll, struct regmap *regmap,
			     const struct alpha_pll_config *config)
{
	u32 val, mask;

	if (config->l)
		FUNC6(regmap, FUNC2(pll), config->l);

	if (config->alpha)
		FUNC6(regmap, FUNC1(pll), config->alpha);

	if (config->config_ctl_val)
		FUNC6(regmap, FUNC0(pll),
						config->config_ctl_val);

	if (config->post_div_mask) {
		mask = config->post_div_mask;
		val = config->post_div_val;
		FUNC5(regmap, FUNC4(pll), mask, val);
	}

	FUNC5(regmap, FUNC3(pll), PLL_UPDATE_BYPASS,
							PLL_UPDATE_BYPASS);

	FUNC5(regmap, FUNC3(pll), PLL_RESET_N, PLL_RESET_N);
}