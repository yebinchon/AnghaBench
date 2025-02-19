
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_clk_pll {TYPE_1__* params; } ;
struct TYPE_2__ {int defaults_set; scalar_t__* ext_misc_reg; scalar_t__ base_reg; scalar_t__ ssc_ctrl_en_mask; } ;


 int PLLDSS_BASE_IDDQ ;
 int PLLDSS_BASE_LOCK_OVERRIDE ;
 int PLLDSS_MISC0_LOCK_ENABLE ;
 int PLLDSS_MISC0_WRITE_MASK ;
 int PLLDSS_MISC1_CFG_EN_SDM ;
 int PLLDSS_MISC1_CFG_EN_SSC ;
 int PLLDSS_MISC1_CFG_WRITE_MASK ;
 int PLLDSS_MISC2_CTRL1_WRITE_MASK ;
 int PLLDSS_MISC3_CTRL2_WRITE_MASK ;
 int PLL_ENABLE ;
 int _pll_misc_chk_default (scalar_t__,TYPE_1__*,int,int,int) ;
 scalar_t__ clk_base ;
 int pr_warn (char*,...) ;
 int readl_relaxed (scalar_t__) ;
 int udelay (int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void plldss_defaults(const char *pll_name, struct tegra_clk_pll *plldss,
  u32 misc0_val, u32 misc1_val, u32 misc2_val, u32 misc3_val)
{
 u32 default_val;
 u32 val = readl_relaxed(clk_base + plldss->params->base_reg);

 plldss->params->defaults_set = 1;

 if (val & PLL_ENABLE) {





  if (val & PLLDSS_BASE_IDDQ) {
   pr_warn("plldss boot enabled with IDDQ set\n");
   plldss->params->defaults_set = 0;
  }


  default_val = misc0_val;
  _pll_misc_chk_default(clk_base, plldss->params, 0, default_val,
         PLLDSS_MISC0_WRITE_MASK &
         (~PLLDSS_MISC0_LOCK_ENABLE));






  if (plldss->params->ssc_ctrl_en_mask) {
   default_val = misc1_val;
   _pll_misc_chk_default(clk_base, plldss->params, 1,
    default_val, PLLDSS_MISC1_CFG_WRITE_MASK);
   default_val = misc2_val;
   _pll_misc_chk_default(clk_base, plldss->params, 2,
    default_val, PLLDSS_MISC2_CTRL1_WRITE_MASK);
   default_val = misc3_val;
   _pll_misc_chk_default(clk_base, plldss->params, 3,
    default_val, PLLDSS_MISC3_CTRL2_WRITE_MASK);
  } else if (plldss->params->ext_misc_reg[1]) {
   default_val = misc1_val;
   _pll_misc_chk_default(clk_base, plldss->params, 1,
    default_val, PLLDSS_MISC1_CFG_WRITE_MASK &
    (~PLLDSS_MISC1_CFG_EN_SDM));
  }

  if (!plldss->params->defaults_set)
   pr_warn("%s already enabled. Postponing set full defaults\n",
     pll_name);


  if (val & PLLDSS_BASE_LOCK_OVERRIDE) {
   val &= ~PLLDSS_BASE_LOCK_OVERRIDE;
   writel_relaxed(val, clk_base +
     plldss->params->base_reg);
  }

  val = readl_relaxed(clk_base + plldss->params->ext_misc_reg[0]);
  val &= ~PLLDSS_MISC0_LOCK_ENABLE;
  val |= misc0_val & PLLDSS_MISC0_LOCK_ENABLE;
  writel_relaxed(val, clk_base + plldss->params->ext_misc_reg[0]);
  udelay(1);

  return;
 }


 val |= PLLDSS_BASE_IDDQ;
 val &= ~PLLDSS_BASE_LOCK_OVERRIDE;
 writel_relaxed(val, clk_base + plldss->params->base_reg);


 if (!plldss->params->ext_misc_reg[1]) {
  writel_relaxed(misc0_val, clk_base +
    plldss->params->ext_misc_reg[0]);
  udelay(1);
  return;
 }

 writel_relaxed(misc0_val, clk_base +
   plldss->params->ext_misc_reg[0]);

 writel_relaxed(misc1_val & (~PLLDSS_MISC1_CFG_EN_SSC),
   clk_base + plldss->params->ext_misc_reg[1]);
 writel_relaxed(misc2_val, clk_base + plldss->params->ext_misc_reg[2]);
 writel_relaxed(misc3_val, clk_base + plldss->params->ext_misc_reg[3]);
 udelay(1);
}
