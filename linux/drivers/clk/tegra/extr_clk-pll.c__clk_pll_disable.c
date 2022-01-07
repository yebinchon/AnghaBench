
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_clk_pll {TYPE_1__* params; scalar_t__ pmc; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int flags; scalar_t__ iddq_reg; int iddq_bit_idx; scalar_t__ reset_reg; int reset_bit_idx; } ;


 int BIT (int ) ;
 int PLL_BASE_BYPASS ;
 int PLL_BASE_ENABLE ;
 scalar_t__ PMC_PLLP_WB0_OVERRIDE ;
 int PMC_PLLP_WB0_OVERRIDE_PLLM_ENABLE ;
 int TEGRA_PLLM ;
 int TEGRA_PLL_BYPASS ;
 int pll_readl (scalar_t__,struct tegra_clk_pll*) ;
 int pll_readl_base (struct tegra_clk_pll*) ;
 int pll_writel (int ,scalar_t__,struct tegra_clk_pll*) ;
 int pll_writel_base (int ,struct tegra_clk_pll*) ;
 int readl_relaxed (scalar_t__) ;
 struct tegra_clk_pll* to_clk_pll (struct clk_hw*) ;
 int udelay (int) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void _clk_pll_disable(struct clk_hw *hw)
{
 struct tegra_clk_pll *pll = to_clk_pll(hw);
 u32 val;

 val = pll_readl_base(pll);
 if (pll->params->flags & TEGRA_PLL_BYPASS)
  val &= ~PLL_BASE_BYPASS;
 val &= ~PLL_BASE_ENABLE;
 pll_writel_base(val, pll);

 if (pll->params->flags & TEGRA_PLLM) {
  val = readl_relaxed(pll->pmc + PMC_PLLP_WB0_OVERRIDE);
  val &= ~PMC_PLLP_WB0_OVERRIDE_PLLM_ENABLE;
  writel_relaxed(val, pll->pmc + PMC_PLLP_WB0_OVERRIDE);
 }

 if (pll->params->reset_reg) {
  val = pll_readl(pll->params->reset_reg, pll);
  val |= BIT(pll->params->reset_bit_idx);
  pll_writel(val, pll->params->reset_reg, pll);
 }

 if (pll->params->iddq_reg) {
  val = pll_readl(pll->params->iddq_reg, pll);
  val |= BIT(pll->params->iddq_bit_idx);
  pll_writel(val, pll->params->iddq_reg, pll);
  udelay(2);
 }
}
