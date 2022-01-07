
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_clk_pll {int dummy; } ;


 int PLLC4_MISC0_DEFAULT_VALUE ;
 int plldss_defaults (char*,struct tegra_clk_pll*,int ,int ,int ,int ) ;

__attribute__((used)) static void tegra210_pllc4_set_defaults(struct tegra_clk_pll *pllc4)
{
 plldss_defaults("PLL_C4", pllc4, PLLC4_MISC0_DEFAULT_VALUE, 0, 0, 0);
}
