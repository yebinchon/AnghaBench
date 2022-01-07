
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_clk_pll {TYPE_1__* params; } ;
struct TYPE_2__ {scalar_t__ ssc_ctrl_reg; int ssc_ctrl_en_mask; scalar_t__ defaults_set; } ;


 int pll_readl (scalar_t__,struct tegra_clk_pll*) ;
 int pll_writel (int ,scalar_t__,struct tegra_clk_pll*) ;

__attribute__((used)) static void pll_clk_start_ss(struct tegra_clk_pll *pll)
{
 if (pll->params->defaults_set && pll->params->ssc_ctrl_reg) {
  u32 val = pll_readl(pll->params->ssc_ctrl_reg, pll);

  val |= pll->params->ssc_ctrl_en_mask;
  pll_writel(val, pll->params->ssc_ctrl_reg, pll);
 }
}
