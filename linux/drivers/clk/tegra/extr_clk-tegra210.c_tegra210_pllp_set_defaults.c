
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_clk_pll {TYPE_1__* params; } ;
struct TYPE_2__ {int defaults_set; scalar_t__* ext_misc_reg; scalar_t__ base_reg; } ;


 int PLLP_MISC0_DEFAULT_VALUE ;
 int PLLP_MISC0_LOCK_ENABLE ;
 int PLLP_MISC0_LOCK_OVERRIDE ;
 int PLLP_MISC1_DEFAULT_VALUE ;
 int PLLP_MISC1_HSIO_EN ;
 int PLLP_MISC1_XUSB_EN ;
 int PLL_ENABLE ;
 scalar_t__ clk_base ;
 int pllp_check_defaults (struct tegra_clk_pll*,int) ;
 int pr_warn (char*) ;
 int readl_relaxed (scalar_t__) ;
 int udelay (int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void tegra210_pllp_set_defaults(struct tegra_clk_pll *pllp)
{
 u32 mask;
 u32 val = readl_relaxed(clk_base + pllp->params->base_reg);

 pllp->params->defaults_set = 1;

 if (val & PLL_ENABLE) {





  pllp_check_defaults(pllp, 1);
  if (!pllp->params->defaults_set)
   pr_warn("PLL_P already enabled. Postponing set full defaults\n");


  val = readl_relaxed(clk_base + pllp->params->ext_misc_reg[0]);
  mask = PLLP_MISC0_LOCK_ENABLE | PLLP_MISC0_LOCK_OVERRIDE;
  val &= ~mask;
  val |= PLLP_MISC0_DEFAULT_VALUE & mask;
  writel_relaxed(val, clk_base + pllp->params->ext_misc_reg[0]);
  udelay(1);

  return;
 }


 writel_relaxed(PLLP_MISC0_DEFAULT_VALUE,
   clk_base + pllp->params->ext_misc_reg[0]);


 val = readl_relaxed(clk_base + pllp->params->ext_misc_reg[1]);
 mask = PLLP_MISC1_HSIO_EN | PLLP_MISC1_XUSB_EN;
 val &= mask;
 val |= ~mask & PLLP_MISC1_DEFAULT_VALUE;
 writel_relaxed(val, clk_base + pllp->params->ext_misc_reg[1]);
 udelay(1);
}
