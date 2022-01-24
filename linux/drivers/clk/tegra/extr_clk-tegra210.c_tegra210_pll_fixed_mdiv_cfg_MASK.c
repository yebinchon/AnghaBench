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
typedef  unsigned long u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct tegra_clk_pll_params {int flags; unsigned long vco_min; int (* round_p_to_pdiv ) (int,int /*<<< orphan*/ *) ;unsigned long vco_max; scalar_t__ ssc_ctrl_reg; scalar_t__ sdm_ctrl_reg; } ;
struct tegra_clk_pll_freq_table {unsigned long m; int p; unsigned long n; unsigned long output_rate; unsigned long input_rate; scalar_t__ sdm_data; } ;
struct tegra_clk_pll {struct tegra_clk_pll_params* params; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned long,unsigned long) ; 
 int EINVAL ; 
 unsigned long PLL_SDM_COEFF ; 
 int TEGRA_PLL_VCO_OUT ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (struct tegra_clk_pll_freq_table*) ; 
 int FUNC4 (int,int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (struct clk_hw*,unsigned long) ; 
 int FUNC6 (struct tegra_clk_pll*,int) ; 
 struct tegra_clk_pll* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw,
			       struct tegra_clk_pll_freq_table *cfg,
			       unsigned long rate, unsigned long input_rate)
{
	struct tegra_clk_pll *pll = FUNC7(hw);
	struct tegra_clk_pll_params *params = pll->params;
	int p;
	unsigned long cf, p_rate;
	u32 pdiv;

	if (!rate)
		return -EINVAL;

	if (!(params->flags & TEGRA_PLL_VCO_OUT)) {
		p = FUNC0(params->vco_min, rate);
		p = params->round_p_to_pdiv(p, &pdiv);
	} else {
		p = rate >= params->vco_min ? 1 : -EINVAL;
	}

	if (p < 0)
		return -EINVAL;

	cfg->m = FUNC5(hw, input_rate);
	cfg->p = p;

	/* Store P as HW value, as that is what is expected */
	cfg->p = FUNC6(pll, cfg->p);

	p_rate = rate * p;
	if (p_rate > params->vco_max)
		p_rate = params->vco_max;
	cf = input_rate / cfg->m;
	cfg->n = p_rate / cf;

	cfg->sdm_data = 0;
	cfg->output_rate = input_rate;
	if (params->sdm_ctrl_reg) {
		unsigned long rem = p_rate - cf * cfg->n;
		/* If ssc is enabled SDM enabled as well, even for integer n */
		if (rem || params->ssc_ctrl_reg) {
			u64 s = rem * PLL_SDM_COEFF;

			FUNC1(s, cf);
			s -= PLL_SDM_COEFF / 2;
			cfg->sdm_data = FUNC2(s);
		}
		cfg->output_rate *= FUNC3(cfg);
		cfg->output_rate /= p * cfg->m * PLL_SDM_COEFF;
	} else {
		cfg->output_rate *= cfg->n;
		cfg->output_rate /= p * cfg->m;
	}

	cfg->input_rate = input_rate;

	return 0;
}