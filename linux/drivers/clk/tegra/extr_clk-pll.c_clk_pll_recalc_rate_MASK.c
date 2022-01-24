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
typedef  unsigned long u64 ;
typedef  int u32 ;
struct tegra_clk_pll_freq_table {int m; unsigned long n; int /*<<< orphan*/  p; } ;
struct tegra_clk_pll {TYPE_1__* params; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int flags; unsigned long fixed_rate; int /*<<< orphan*/  (* set_gain ) (struct tegra_clk_pll_freq_table*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int PLL_BASE_BYPASS ; 
 int PLL_BASE_OVERRIDE ; 
 int TEGRA_PLLM ; 
 int TEGRA_PLLMB ; 
 int TEGRA_PLL_BYPASS ; 
 int TEGRA_PLL_FIXED ; 
 int TEGRA_PLL_VCO_OUT ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_clk_pll*,struct tegra_clk_pll_freq_table*) ; 
 scalar_t__ FUNC3 (struct clk_hw*,struct tegra_clk_pll_freq_table*,unsigned long,unsigned long) ; 
 int FUNC4 (struct clk_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int) ; 
 int FUNC7 (struct tegra_clk_pll*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_clk_pll_freq_table*) ; 
 struct tegra_clk_pll* FUNC10 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC11(struct clk_hw *hw,
					 unsigned long parent_rate)
{
	struct tegra_clk_pll *pll = FUNC10(hw);
	struct tegra_clk_pll_freq_table cfg;
	u32 val;
	u64 rate = parent_rate;
	int pdiv;

	val = FUNC7(pll);

	if ((pll->params->flags & TEGRA_PLL_BYPASS) && (val & PLL_BASE_BYPASS))
		return parent_rate;

	if ((pll->params->flags & TEGRA_PLL_FIXED) &&
	    !(pll->params->flags & (TEGRA_PLLM | TEGRA_PLLMB)) &&
			!(val & PLL_BASE_OVERRIDE)) {
		struct tegra_clk_pll_freq_table sel;
		if (FUNC3(hw, &sel, pll->params->fixed_rate,
					parent_rate)) {
			FUNC8("Clock %s has unknown fixed frequency\n",
			       FUNC5(hw));
			FUNC0();
		}
		return pll->params->fixed_rate;
	}

	FUNC2(pll, &cfg);

	if (pll->params->flags & TEGRA_PLL_VCO_OUT) {
		pdiv = 1;
	} else {
		pdiv = FUNC4(hw, cfg.p);
		if (pdiv < 0) {
			FUNC1(1, "Clock %s has invalid pdiv value : 0x%x\n",
			     FUNC5(hw), cfg.p);
			pdiv = 1;
		}
	}

	if (pll->params->set_gain)
		pll->params->set_gain(&cfg);

	cfg.m *= pdiv;

	rate *= cfg.n;
	FUNC6(rate, cfg.m);

	return rate;
}