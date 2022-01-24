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
typedef  int u32 ;
struct tegra_clk_pll_freq_table {int m; int n; int p; int cpcon; } ;
struct tegra_clk_pll {scalar_t__ clk_base; TYPE_1__* params; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  fixed_rate; } ;

/* Variables and functions */
 int EINVAL ; 
 int PLLE_BASE_DIVCML_MASK ; 
 int PLLE_BASE_DIVCML_SHIFT ; 
 int PLLE_MISC_LOCK_ENABLE ; 
 int PLLE_MISC_READY ; 
 int PLLE_MISC_SETUP_MASK ; 
 int PLLE_MISC_SETUP_VALUE ; 
 int PLLE_SS_COEFFICIENTS_MASK ; 
 scalar_t__ PLLE_SS_CTRL ; 
 int PLLE_SS_DISABLE ; 
 int PLL_BASE_BYPASS ; 
 int PLL_BASE_ENABLE ; 
 int TEGRA_PLLE_CONFIGURE ; 
 scalar_t__ FUNC0 (struct clk_hw*,struct tegra_clk_pll_freq_table*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_hw*) ; 
 scalar_t__ FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_clk_pll*) ; 
 int FUNC6 (struct tegra_clk_pll*) ; 
 int FUNC7 (struct tegra_clk_pll*) ; 
 int FUNC8 (struct tegra_clk_pll*) ; 
 int FUNC9 (struct tegra_clk_pll*) ; 
 int FUNC10 (struct tegra_clk_pll*) ; 
 int FUNC11 (struct tegra_clk_pll*) ; 
 int FUNC12 (struct tegra_clk_pll*) ; 
 int FUNC13 (struct tegra_clk_pll*) ; 
 int FUNC14 (struct tegra_clk_pll*) ; 
 int /*<<< orphan*/  FUNC15 (int,struct tegra_clk_pll*) ; 
 int /*<<< orphan*/  FUNC16 (int,struct tegra_clk_pll*) ; 
 int FUNC17 (scalar_t__) ; 
 struct tegra_clk_pll* FUNC18 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC19 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC20(struct clk_hw *hw)
{
	struct tegra_clk_pll *pll = FUNC18(hw);
	struct tegra_clk_pll_freq_table sel;
	unsigned long input_rate;
	u32 val;
	int err;

	if (FUNC4(hw))
		return 0;

	input_rate = FUNC2(FUNC1(hw));

	if (FUNC0(hw, &sel, pll->params->fixed_rate, input_rate))
		return -EINVAL;

	FUNC3(hw);

	val = FUNC14(pll);
	val &= ~(PLLE_MISC_LOCK_ENABLE | PLLE_MISC_SETUP_MASK);
	FUNC16(val, pll);

	val = FUNC14(pll);
	if (!(val & PLLE_MISC_READY)) {
		err = FUNC6(pll);
		if (err)
			return err;
	}

	if (pll->params->flags & TEGRA_PLLE_CONFIGURE) {
		/* configure dividers */
		val = FUNC13(pll);
		val &= ~(FUNC11(pll) | FUNC9(pll) |
			 FUNC7(pll));
		val &= ~(PLLE_BASE_DIVCML_MASK << PLLE_BASE_DIVCML_SHIFT);
		val |= sel.m << FUNC8(pll);
		val |= sel.n << FUNC10(pll);
		val |= sel.p << FUNC12(pll);
		val |= sel.cpcon << PLLE_BASE_DIVCML_SHIFT;
		FUNC15(val, pll);
	}

	val = FUNC14(pll);
	val |= PLLE_MISC_SETUP_VALUE;
	val |= PLLE_MISC_LOCK_ENABLE;
	FUNC16(val, pll);

	val = FUNC17(pll->clk_base + PLLE_SS_CTRL);
	val &= ~PLLE_SS_COEFFICIENTS_MASK;
	val |= PLLE_SS_DISABLE;
	FUNC19(val, pll->clk_base + PLLE_SS_CTRL);

	val = FUNC13(pll);
	val |= (PLL_BASE_BYPASS | PLL_BASE_ENABLE);
	FUNC15(val, pll);

	FUNC5(pll);

	return 0;
}