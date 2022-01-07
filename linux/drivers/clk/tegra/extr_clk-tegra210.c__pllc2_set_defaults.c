
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_clk_pll {int dummy; } ;


 int tegra210_pllcx_set_defaults (char*,struct tegra_clk_pll*) ;

__attribute__((used)) static void _pllc2_set_defaults(struct tegra_clk_pll *pllcx)
{
 tegra210_pllcx_set_defaults("PLL_C2", pllcx);
}
