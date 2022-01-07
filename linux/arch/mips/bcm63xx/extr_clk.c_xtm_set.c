
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int BCM63XX_RESET_SAR ;
 int BCMCPU_IS_6368 () ;
 int CKCTL_6368_SAR_EN ;
 int bcm63xx_core_set_reset (int ,int) ;
 int bcm_hwclock_set (int ,int) ;
 int clk_disable_unlocked (int *) ;
 int clk_enable_unlocked (int *) ;
 int clk_swpkt_sar ;
 int mdelay (int) ;

__attribute__((used)) static void xtm_set(struct clk *clk, int enable)
{
 if (!BCMCPU_IS_6368())
  return;

 if (enable)
  clk_enable_unlocked(&clk_swpkt_sar);
 else
  clk_disable_unlocked(&clk_swpkt_sar);

 bcm_hwclock_set(CKCTL_6368_SAR_EN, enable);

 if (enable) {

  bcm63xx_core_set_reset(BCM63XX_RESET_SAR, 1);
  mdelay(1);
  bcm63xx_core_set_reset(BCM63XX_RESET_SAR, 0);
  mdelay(1);
 }
}
