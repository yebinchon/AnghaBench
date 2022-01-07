
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsdk_pll_clk {int dummy; } ;
struct hsdk_pll_cfg {int dummy; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int HSDK_PLL_MAX_LOCK_TIME ;
 scalar_t__ hsdk_pll_is_err (struct hsdk_pll_clk*) ;
 int hsdk_pll_is_locked (struct hsdk_pll_clk*) ;
 int hsdk_pll_set_cfg (struct hsdk_pll_clk*,struct hsdk_pll_cfg const*) ;
 int udelay (int ) ;

__attribute__((used)) static int hsdk_pll_comm_update_rate(struct hsdk_pll_clk *clk,
         unsigned long rate,
         const struct hsdk_pll_cfg *cfg)
{
 hsdk_pll_set_cfg(clk, cfg);





 udelay(HSDK_PLL_MAX_LOCK_TIME);
 if (!hsdk_pll_is_locked(clk))
  return -ETIMEDOUT;

 if (hsdk_pll_is_err(clk))
  return -EINVAL;

 return 0;
}
