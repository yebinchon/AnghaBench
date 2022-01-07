
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_clk_pll {TYPE_1__* params; } ;
struct TYPE_2__ {int flags; int lock_enable_bit_idx; } ;


 int BIT (int ) ;
 int TEGRA_PLL_HAS_LOCK_ENABLE ;
 int TEGRA_PLL_USE_LOCK ;
 int pll_readl_misc (struct tegra_clk_pll*) ;
 int pll_writel_misc (int ,struct tegra_clk_pll*) ;

__attribute__((used)) static void clk_pll_enable_lock(struct tegra_clk_pll *pll)
{
 u32 val;

 if (!(pll->params->flags & TEGRA_PLL_USE_LOCK))
  return;

 if (!(pll->params->flags & TEGRA_PLL_HAS_LOCK_ENABLE))
  return;

 val = pll_readl_misc(pll);
 val |= BIT(pll->params->lock_enable_bit_idx);
 pll_writel_misc(val, pll);
}
