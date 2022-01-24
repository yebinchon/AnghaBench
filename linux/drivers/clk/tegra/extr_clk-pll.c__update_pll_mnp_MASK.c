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
struct tegra_clk_pll_params {int flags; int /*<<< orphan*/  pmc_divnm_reg; int /*<<< orphan*/  pmc_divp_reg; struct div_nmp* div_nmp; } ;
struct tegra_clk_pll_freq_table {int p; int m; int n; } ;
struct tegra_clk_pll {int /*<<< orphan*/  hw; struct tegra_clk_pll_params* params; } ;
struct div_nmp {int override_divp_shift; int override_divm_shift; int override_divn_shift; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMC_PLLP_WB0_OVERRIDE ; 
 int PMC_PLLP_WB0_OVERRIDE_PLLM_OVERRIDE ; 
 int TEGRA_PLLM ; 
 int TEGRA_PLLMB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tegra_clk_pll_freq_table*) ; 
 int FUNC1 (struct tegra_clk_pll*) ; 
 int FUNC2 (struct tegra_clk_pll*) ; 
 int FUNC3 (struct tegra_clk_pll*) ; 
 int FUNC4 (struct tegra_clk_pll*) ; 
 int FUNC5 (struct tegra_clk_pll*) ; 
 int FUNC6 (struct tegra_clk_pll*) ; 
 int FUNC7 (struct tegra_clk_pll*) ; 
 int FUNC8 (struct tegra_clk_pll*) ; 
 int FUNC9 (struct tegra_clk_pll*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct tegra_clk_pll*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,struct tegra_clk_pll*) ; 
 int FUNC12 (struct tegra_clk_pll*) ; 
 int /*<<< orphan*/  FUNC13 (int,struct tegra_clk_pll*) ; 

__attribute__((used)) static void FUNC14(struct tegra_clk_pll *pll,
			    struct tegra_clk_pll_freq_table *cfg)
{
	u32 val;
	struct tegra_clk_pll_params *params = pll->params;
	struct div_nmp *div_nmp = params->div_nmp;

	if ((params->flags & (TEGRA_PLLM | TEGRA_PLLMB)) &&
		(FUNC10(PMC_PLLP_WB0_OVERRIDE, pll) &
			PMC_PLLP_WB0_OVERRIDE_PLLM_OVERRIDE)) {
		val = FUNC10(params->pmc_divp_reg, pll);
		val &= ~(FUNC7(pll) << div_nmp->override_divp_shift);
		val |= cfg->p << div_nmp->override_divp_shift;
		FUNC11(val, params->pmc_divp_reg, pll);

		val = FUNC10(params->pmc_divnm_reg, pll);
		val &= ~((FUNC1(pll) << div_nmp->override_divm_shift) |
			(FUNC4(pll) << div_nmp->override_divn_shift));
		val |= (cfg->m << div_nmp->override_divm_shift) |
			(cfg->n << div_nmp->override_divn_shift);
		FUNC11(val, params->pmc_divnm_reg, pll);
	} else {
		val = FUNC12(pll);

		val &= ~(FUNC2(pll) | FUNC5(pll) |
			 FUNC8(pll));

		val |= (cfg->m << FUNC3(pll)) |
		       (cfg->n << FUNC6(pll)) |
		       (cfg->p << FUNC9(pll));

		FUNC13(val, pll);

		FUNC0(&pll->hw, cfg);
	}
}