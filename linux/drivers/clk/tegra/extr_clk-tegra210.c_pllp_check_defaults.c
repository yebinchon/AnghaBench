
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_clk_pll {int params; } ;


 int PLLP_MISC0_DEFAULT_VALUE ;
 int PLLP_MISC0_IDDQ ;
 int PLLP_MISC0_LOCK_ENABLE ;
 int PLLP_MISC0_LOCK_OVERRIDE ;
 int PLLP_MISC0_WRITE_MASK ;
 int PLLP_MISC1_DEFAULT_VALUE ;
 int PLLP_MISC1_HSIO_EN ;
 int PLLP_MISC1_WRITE_MASK ;
 int PLLP_MISC1_XUSB_EN ;
 int _pll_misc_chk_default (int ,int ,int,int,int) ;
 int clk_base ;

__attribute__((used)) static void pllp_check_defaults(struct tegra_clk_pll *pll, bool enabled)
{
 u32 val, mask;


 val = PLLP_MISC0_DEFAULT_VALUE & (~PLLP_MISC0_IDDQ);
 mask = PLLP_MISC0_LOCK_ENABLE | PLLP_MISC0_LOCK_OVERRIDE;
 if (!enabled)
  mask |= PLLP_MISC0_IDDQ;
 _pll_misc_chk_default(clk_base, pll->params, 0, val,
   ~mask & PLLP_MISC0_WRITE_MASK);


 val = PLLP_MISC1_DEFAULT_VALUE;
 mask = PLLP_MISC1_HSIO_EN | PLLP_MISC1_XUSB_EN;
 _pll_misc_chk_default(clk_base, pll->params, 1, val,
   ~mask & PLLP_MISC1_WRITE_MASK);
}
