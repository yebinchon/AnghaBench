
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_clk_pll {TYPE_1__* params; } ;
struct TYPE_2__ {int defaults_set; scalar_t__* ext_misc_reg; scalar_t__ base_reg; } ;


 int PLLA_BASE_IDDQ ;
 int PLLA_MISC0_DEFAULT_VALUE ;
 int PLLA_MISC0_LOCK_ENABLE ;
 int PLLA_MISC0_LOCK_OVERRIDE ;
 int PLLA_MISC0_WRITE_MASK ;
 int PLLA_MISC2_DEFAULT_VALUE ;
 int PLLA_MISC2_EN_DYNRAMP ;
 int PLL_ENABLE ;
 int _pll_misc_chk_default (scalar_t__,TYPE_1__*,int,int,int) ;
 scalar_t__ clk_base ;
 int pr_warn (char*) ;
 int readl_relaxed (scalar_t__) ;
 int udelay (int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void tegra210_plla_set_defaults(struct tegra_clk_pll *plla)
{
 u32 mask;
 u32 val = readl_relaxed(clk_base + plla->params->base_reg);

 plla->params->defaults_set = 1;

 if (val & PLL_ENABLE) {




  if (val & PLLA_BASE_IDDQ) {
   pr_warn("PLL_A boot enabled with IDDQ set\n");
   plla->params->defaults_set = 0;
  }

  pr_warn("PLL_A already enabled. Postponing set full defaults\n");

  val = PLLA_MISC0_DEFAULT_VALUE;
  mask = PLLA_MISC0_LOCK_ENABLE | PLLA_MISC0_LOCK_OVERRIDE;
  _pll_misc_chk_default(clk_base, plla->params, 0, val,
    ~mask & PLLA_MISC0_WRITE_MASK);

  val = PLLA_MISC2_DEFAULT_VALUE;
  _pll_misc_chk_default(clk_base, plla->params, 2, val,
    PLLA_MISC2_EN_DYNRAMP);


  val = readl_relaxed(clk_base + plla->params->ext_misc_reg[0]);
  val &= ~mask;
  val |= PLLA_MISC0_DEFAULT_VALUE & mask;
  writel_relaxed(val, clk_base + plla->params->ext_misc_reg[0]);
  udelay(1);

  return;
 }


 val |= PLLA_BASE_IDDQ;
 writel_relaxed(val, clk_base + plla->params->base_reg);
 writel_relaxed(PLLA_MISC0_DEFAULT_VALUE,
   clk_base + plla->params->ext_misc_reg[0]);
 writel_relaxed(PLLA_MISC2_DEFAULT_VALUE,
   clk_base + plla->params->ext_misc_reg[2]);
 udelay(1);
}
