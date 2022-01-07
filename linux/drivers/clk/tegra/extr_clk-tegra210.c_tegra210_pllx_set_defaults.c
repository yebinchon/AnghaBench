
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_clk_pll {TYPE_1__* params; int hw; } ;
struct TYPE_2__ {int defaults_set; scalar_t__* ext_misc_reg; scalar_t__ base_reg; } ;


 int PLLX_MISC0_DEFAULT_VALUE ;
 int PLLX_MISC0_LOCK_ENABLE ;
 int PLLX_MISC1_DEFAULT_VALUE ;
 int PLLX_MISC2_DEFAULT_VALUE ;
 int PLLX_MISC2_DYNRAMP_STEPA_MASK ;
 int PLLX_MISC2_DYNRAMP_STEPA_SHIFT ;
 int PLLX_MISC2_DYNRAMP_STEPB_MASK ;
 int PLLX_MISC2_DYNRAMP_STEPB_SHIFT ;
 int PLLX_MISC3_DEFAULT_VALUE ;
 int PLLX_MISC4_DEFAULT_VALUE ;
 int PLLX_MISC5_DEFAULT_VALUE ;
 int PLL_ENABLE ;
 scalar_t__ clk_base ;
 int pllx_check_defaults (struct tegra_clk_pll*) ;
 int pllx_get_dyn_steps (int *,int*,int*) ;
 int pr_warn (char*) ;
 int readl_relaxed (scalar_t__) ;
 int udelay (int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void tegra210_pllx_set_defaults(struct tegra_clk_pll *pllx)
{
 u32 val;
 u32 step_a, step_b;

 pllx->params->defaults_set = 1;


 pllx_get_dyn_steps(&pllx->hw, &step_a, &step_b);
 val = PLLX_MISC2_DEFAULT_VALUE & (~PLLX_MISC2_DYNRAMP_STEPA_MASK) &
  (~PLLX_MISC2_DYNRAMP_STEPB_MASK);
 val |= step_a << PLLX_MISC2_DYNRAMP_STEPA_SHIFT;
 val |= step_b << PLLX_MISC2_DYNRAMP_STEPB_SHIFT;

 if (readl_relaxed(clk_base + pllx->params->base_reg) & PLL_ENABLE) {





  pllx_check_defaults(pllx);

  if (!pllx->params->defaults_set)
   pr_warn("PLL_X already enabled. Postponing set full defaults\n");

  writel_relaxed(val, clk_base + pllx->params->ext_misc_reg[2]);


  val = readl_relaxed(clk_base + pllx->params->ext_misc_reg[0]);
  val &= ~PLLX_MISC0_LOCK_ENABLE;
  val |= PLLX_MISC0_DEFAULT_VALUE & PLLX_MISC0_LOCK_ENABLE;
  writel_relaxed(val, clk_base + pllx->params->ext_misc_reg[0]);
  udelay(1);

  return;
 }


 writel_relaxed(PLLX_MISC0_DEFAULT_VALUE, clk_base +
   pllx->params->ext_misc_reg[0]);


 writel_relaxed(PLLX_MISC1_DEFAULT_VALUE, clk_base +
   pllx->params->ext_misc_reg[1]);


 writel_relaxed(val, clk_base + pllx->params->ext_misc_reg[2]);


 writel_relaxed(PLLX_MISC3_DEFAULT_VALUE, clk_base +
   pllx->params->ext_misc_reg[3]);


 writel_relaxed(PLLX_MISC4_DEFAULT_VALUE, clk_base +
   pllx->params->ext_misc_reg[4]);
 writel_relaxed(PLLX_MISC5_DEFAULT_VALUE, clk_base +
   pllx->params->ext_misc_reg[5]);
 udelay(1);
}
