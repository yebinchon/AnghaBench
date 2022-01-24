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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_clk_pll {TYPE_1__* params; scalar_t__ pmc; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int flags; scalar_t__ iddq_reg; int /*<<< orphan*/  iddq_bit_idx; scalar_t__ reset_reg; int /*<<< orphan*/  reset_bit_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLL_BASE_BYPASS ; 
 int /*<<< orphan*/  PLL_BASE_ENABLE ; 
 scalar_t__ PMC_PLLP_WB0_OVERRIDE ; 
 int /*<<< orphan*/  PMC_PLLP_WB0_OVERRIDE_PLLM_ENABLE ; 
 int TEGRA_PLLM ; 
 int TEGRA_PLL_BYPASS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct tegra_clk_pll*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_clk_pll*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,struct tegra_clk_pll*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tegra_clk_pll*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct tegra_clk_pll* FUNC6 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct clk_hw *hw)
{
	struct tegra_clk_pll *pll = FUNC6(hw);
	u32 val;

	val = FUNC2(pll);
	if (pll->params->flags & TEGRA_PLL_BYPASS)
		val &= ~PLL_BASE_BYPASS;
	val &= ~PLL_BASE_ENABLE;
	FUNC4(val, pll);

	if (pll->params->flags & TEGRA_PLLM) {
		val = FUNC5(pll->pmc + PMC_PLLP_WB0_OVERRIDE);
		val &= ~PMC_PLLP_WB0_OVERRIDE_PLLM_ENABLE;
		FUNC8(val, pll->pmc + PMC_PLLP_WB0_OVERRIDE);
	}

	if (pll->params->reset_reg) {
		val = FUNC1(pll->params->reset_reg, pll);
		val |= FUNC0(pll->params->reset_bit_idx);
		FUNC3(val, pll->params->reset_reg, pll);
	}

	if (pll->params->iddq_reg) {
		val = FUNC1(pll->params->iddq_reg, pll);
		val |= FUNC0(pll->params->iddq_bit_idx);
		FUNC3(val, pll->params->iddq_reg, pll);
		FUNC7(2);
	}
}