#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tegra_clk_pll_freq_table {scalar_t__ m; scalar_t__ p; } ;
struct tegra_clk_pll {TYPE_1__* params; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* dyn_ramp ) (struct tegra_clk_pll*,struct tegra_clk_pll_freq_table*) ;int flags; int /*<<< orphan*/  (* set_defaults ) (struct tegra_clk_pll*) ;scalar_t__ defaults_set; } ;

/* Variables and functions */
 int TEGRA_PLL_HAS_CPCON ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_clk_pll*,struct tegra_clk_pll_freq_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_clk_pll*,struct tegra_clk_pll_freq_table*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_clk_pll*,struct tegra_clk_pll_freq_table*) ; 
 int FUNC5 (struct clk_hw*) ; 
 int FUNC6 (struct tegra_clk_pll*) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_clk_pll*) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_clk_pll*) ; 
 int FUNC9 (struct tegra_clk_pll*,struct tegra_clk_pll_freq_table*) ; 
 int /*<<< orphan*/  FUNC10 (struct tegra_clk_pll*) ; 
 struct tegra_clk_pll* FUNC11 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC12(struct clk_hw *hw, struct tegra_clk_pll_freq_table *cfg,
			unsigned long rate)
{
	struct tegra_clk_pll *pll = FUNC11(hw);
	struct tegra_clk_pll_freq_table old_cfg;
	int state, ret = 0;

	state = FUNC5(hw);

	FUNC2(pll, &old_cfg);

	if (state && pll->params->defaults_set && pll->params->dyn_ramp &&
			(cfg->m == old_cfg.m) && (cfg->p == old_cfg.p)) {
		ret = pll->params->dyn_ramp(pll, cfg);
		if (!ret)
			return 0;
	}

	if (state) {
		FUNC8(pll);
		FUNC0(hw);
	}

	if (!pll->params->defaults_set && pll->params->set_defaults)
		pll->params->set_defaults(pll);

	FUNC4(pll, cfg);

	if (pll->params->flags & TEGRA_PLL_HAS_CPCON)
		FUNC3(pll, cfg, rate);

	if (state) {
		FUNC1(hw);
		ret = FUNC6(pll);
		FUNC7(pll);
	}

	return ret;
}