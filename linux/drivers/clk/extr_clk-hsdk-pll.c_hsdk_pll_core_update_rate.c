
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsdk_pll_clk {int spec_regs; } ;
struct hsdk_pll_cfg {int dummy; } ;


 unsigned long CORE_IF_CLK_THRESHOLD_HZ ;
 int CREG_CORE_IF_CLK_DIV_1 ;
 int CREG_CORE_IF_CLK_DIV_2 ;
 int EINVAL ;
 int ETIMEDOUT ;
 int HSDK_PLL_MAX_LOCK_TIME ;
 scalar_t__ hsdk_pll_is_err (struct hsdk_pll_clk*) ;
 int hsdk_pll_is_locked (struct hsdk_pll_clk*) ;
 int hsdk_pll_set_cfg (struct hsdk_pll_clk*,struct hsdk_pll_cfg const*) ;
 int iowrite32 (int ,int ) ;
 int udelay (int ) ;

__attribute__((used)) static int hsdk_pll_core_update_rate(struct hsdk_pll_clk *clk,
         unsigned long rate,
         const struct hsdk_pll_cfg *cfg)
{




 if (rate > CORE_IF_CLK_THRESHOLD_HZ)
  iowrite32(CREG_CORE_IF_CLK_DIV_2, clk->spec_regs);

 hsdk_pll_set_cfg(clk, cfg);





 udelay(HSDK_PLL_MAX_LOCK_TIME);
 if (!hsdk_pll_is_locked(clk))
  return -ETIMEDOUT;

 if (hsdk_pll_is_err(clk))
  return -EINVAL;





 if (rate <= CORE_IF_CLK_THRESHOLD_HZ)
  iowrite32(CREG_CORE_IF_CLK_DIV_1, clk->spec_regs);

 return 0;
}
