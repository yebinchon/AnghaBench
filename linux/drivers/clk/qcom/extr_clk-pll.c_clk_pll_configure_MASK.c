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
struct pll_config {int /*<<< orphan*/  aux_output_mask; int /*<<< orphan*/  main_output_mask; int /*<<< orphan*/  mn_ena_mask; int /*<<< orphan*/  post_div_mask; int /*<<< orphan*/  pre_div_mask; int /*<<< orphan*/  vco_mask; int /*<<< orphan*/  post_div_val; int /*<<< orphan*/  pre_div_val; int /*<<< orphan*/  vco_val; int /*<<< orphan*/  n; int /*<<< orphan*/  m; int /*<<< orphan*/  l; } ;
struct clk_pll {int /*<<< orphan*/  config_reg; int /*<<< orphan*/  n_reg; int /*<<< orphan*/  m_reg; int /*<<< orphan*/  l_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct clk_pll *pll, struct regmap *regmap,
	const struct pll_config *config)
{
	u32 val;
	u32 mask;

	FUNC1(regmap, pll->l_reg, config->l);
	FUNC1(regmap, pll->m_reg, config->m);
	FUNC1(regmap, pll->n_reg, config->n);

	val = config->vco_val;
	val |= config->pre_div_val;
	val |= config->post_div_val;
	val |= config->mn_ena_mask;
	val |= config->main_output_mask;
	val |= config->aux_output_mask;

	mask = config->vco_mask;
	mask |= config->pre_div_mask;
	mask |= config->post_div_mask;
	mask |= config->mn_ena_mask;
	mask |= config->main_output_mask;
	mask |= config->aux_output_mask;

	FUNC0(regmap, pll->config_reg, mask, val);
}