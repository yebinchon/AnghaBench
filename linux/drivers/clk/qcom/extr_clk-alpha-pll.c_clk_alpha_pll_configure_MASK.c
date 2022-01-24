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
typedef  int /*<<< orphan*/  u32 ;
struct regmap {int dummy; } ;
struct clk_alpha_pll {int flags; } ;
struct alpha_pll_config {int /*<<< orphan*/  vco_mask; int /*<<< orphan*/  post_div_mask; int /*<<< orphan*/  pre_div_mask; int /*<<< orphan*/  early_output_mask; int /*<<< orphan*/  aux2_output_mask; int /*<<< orphan*/  aux_output_mask; int /*<<< orphan*/  main_output_mask; int /*<<< orphan*/  alpha_mode_mask; int /*<<< orphan*/  alpha_en_mask; int /*<<< orphan*/  vco_val; int /*<<< orphan*/  post_div_val; int /*<<< orphan*/  pre_div_val; int /*<<< orphan*/  alpha_hi; int /*<<< orphan*/  config_ctl_hi_val; int /*<<< orphan*/  config_ctl_val; int /*<<< orphan*/  alpha; int /*<<< orphan*/  l; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC5 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC6 (struct clk_alpha_pll*) ; 
 int SUPPORTS_FSM_MODE ; 
 int FUNC7 (struct clk_alpha_pll*) ; 
 scalar_t__ FUNC8 (struct clk_alpha_pll*) ; 
 int /*<<< orphan*/  FUNC9 (struct regmap*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC12(struct clk_alpha_pll *pll, struct regmap *regmap,
			     const struct alpha_pll_config *config)
{
	u32 val, mask;

	FUNC11(regmap, FUNC4(pll), config->l);
	FUNC11(regmap, FUNC0(pll), config->alpha);
	FUNC11(regmap, FUNC2(pll), config->config_ctl_val);

	if (FUNC8(pll))
		FUNC11(regmap, FUNC3(pll),
			     config->config_ctl_hi_val);

	if (FUNC7(pll) > 32)
		FUNC11(regmap, FUNC1(pll), config->alpha_hi);

	val = config->main_output_mask;
	val |= config->aux_output_mask;
	val |= config->aux2_output_mask;
	val |= config->early_output_mask;
	val |= config->pre_div_val;
	val |= config->post_div_val;
	val |= config->vco_val;
	val |= config->alpha_en_mask;
	val |= config->alpha_mode_mask;

	mask = config->main_output_mask;
	mask |= config->aux_output_mask;
	mask |= config->aux2_output_mask;
	mask |= config->early_output_mask;
	mask |= config->pre_div_mask;
	mask |= config->post_div_mask;
	mask |= config->vco_mask;

	FUNC10(regmap, FUNC6(pll), mask, val);

	if (pll->flags & SUPPORTS_FSM_MODE)
		FUNC9(regmap, FUNC5(pll), 6, 0);
}