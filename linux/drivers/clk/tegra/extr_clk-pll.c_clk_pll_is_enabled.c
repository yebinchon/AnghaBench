
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_clk_pll {scalar_t__ pmc; TYPE_1__* params; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int PLL_BASE_ENABLE ;
 scalar_t__ PMC_PLLP_WB0_OVERRIDE ;
 int PMC_PLLP_WB0_OVERRIDE_PLLM_ENABLE ;
 int PMC_PLLP_WB0_OVERRIDE_PLLM_OVERRIDE ;
 int TEGRA_PLLM ;
 int pll_readl_base (struct tegra_clk_pll*) ;
 int readl_relaxed (scalar_t__) ;
 struct tegra_clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static int clk_pll_is_enabled(struct clk_hw *hw)
{
 struct tegra_clk_pll *pll = to_clk_pll(hw);
 u32 val;

 if (pll->params->flags & TEGRA_PLLM) {
  val = readl_relaxed(pll->pmc + PMC_PLLP_WB0_OVERRIDE);
  if (val & PMC_PLLP_WB0_OVERRIDE_PLLM_OVERRIDE)
   return val & PMC_PLLP_WB0_OVERRIDE_PLLM_ENABLE ? 1 : 0;
 }

 val = pll_readl_base(pll);

 return val & PLL_BASE_ENABLE ? 1 : 0;
}
