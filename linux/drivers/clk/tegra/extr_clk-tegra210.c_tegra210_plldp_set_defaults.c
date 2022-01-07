
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_clk_pll {int dummy; } ;


 int PLLDP_MISC0_DEFAULT_VALUE ;
 int PLLDP_MISC1_CFG_DEFAULT_VALUE ;
 int PLLDP_MISC2_CTRL1_DEFAULT_VALUE ;
 int PLLDP_MISC3_CTRL2_DEFAULT_VALUE ;
 int plldss_defaults (char*,struct tegra_clk_pll*,int ,int ,int ,int ) ;

__attribute__((used)) static void tegra210_plldp_set_defaults(struct tegra_clk_pll *plldp)
{
 plldss_defaults("PLL_DP", plldp, PLLDP_MISC0_DEFAULT_VALUE,
   PLLDP_MISC1_CFG_DEFAULT_VALUE,
   PLLDP_MISC2_CTRL1_DEFAULT_VALUE,
   PLLDP_MISC3_CTRL2_DEFAULT_VALUE);
}
