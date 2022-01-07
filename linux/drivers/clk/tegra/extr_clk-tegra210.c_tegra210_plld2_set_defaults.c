
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_clk_pll {int dummy; } ;


 int PLLD2_MISC0_DEFAULT_VALUE ;
 int PLLD2_MISC1_CFG_DEFAULT_VALUE ;
 int PLLD2_MISC2_CTRL1_DEFAULT_VALUE ;
 int PLLD2_MISC3_CTRL2_DEFAULT_VALUE ;
 int plldss_defaults (char*,struct tegra_clk_pll*,int ,int ,int ,int ) ;

__attribute__((used)) static void tegra210_plld2_set_defaults(struct tegra_clk_pll *plld2)
{
 plldss_defaults("PLL_D2", plld2, PLLD2_MISC0_DEFAULT_VALUE,
   PLLD2_MISC1_CFG_DEFAULT_VALUE,
   PLLD2_MISC2_CTRL1_DEFAULT_VALUE,
   PLLD2_MISC3_CTRL2_DEFAULT_VALUE);
}
