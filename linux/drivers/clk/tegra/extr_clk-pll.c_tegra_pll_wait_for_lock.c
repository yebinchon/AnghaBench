
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_clk_pll {int dummy; } ;


 int clk_pll_wait_for_lock (struct tegra_clk_pll*) ;

int tegra_pll_wait_for_lock(struct tegra_clk_pll *pll)
{
 return clk_pll_wait_for_lock(pll);
}
