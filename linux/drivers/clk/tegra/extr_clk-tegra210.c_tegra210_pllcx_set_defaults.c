
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_clk_pll {TYPE_1__* params; } ;
struct TYPE_2__ {int defaults_set; scalar_t__* ext_misc_reg; scalar_t__ base_reg; } ;


 int PLLCX_MISC0_DEFAULT_VALUE ;
 int PLLCX_MISC1_DEFAULT_VALUE ;
 int PLLCX_MISC2_DEFAULT_VALUE ;
 int PLLCX_MISC3_DEFAULT_VALUE ;
 int PLL_ENABLE ;
 scalar_t__ clk_base ;
 int pllcx_check_defaults (TYPE_1__*) ;
 int pr_warn (char*,char const*) ;
 int readl_relaxed (scalar_t__) ;
 int udelay (int) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void tegra210_pllcx_set_defaults(const char *name,
     struct tegra_clk_pll *pllcx)
{
 pllcx->params->defaults_set = 1;

 if (readl_relaxed(clk_base + pllcx->params->base_reg) & PLL_ENABLE) {

  pllcx_check_defaults(pllcx->params);
  if (!pllcx->params->defaults_set)
   pr_warn("%s already enabled. Postponing set full defaults\n",
    name);
  return;
 }


 writel_relaxed(PLLCX_MISC0_DEFAULT_VALUE,
   clk_base + pllcx->params->ext_misc_reg[0]);
 writel_relaxed(PLLCX_MISC1_DEFAULT_VALUE,
   clk_base + pllcx->params->ext_misc_reg[1]);
 writel_relaxed(PLLCX_MISC2_DEFAULT_VALUE,
   clk_base + pllcx->params->ext_misc_reg[2]);
 writel_relaxed(PLLCX_MISC3_DEFAULT_VALUE,
   clk_base + pllcx->params->ext_misc_reg[3]);
 udelay(1);
}
