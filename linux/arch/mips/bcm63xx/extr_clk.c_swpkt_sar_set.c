
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ BCMCPU_IS_6368 () ;
 int CKCTL_6368_SWPKT_SAR_EN ;
 int bcm_hwclock_set (int ,int) ;

__attribute__((used)) static void swpkt_sar_set(struct clk *clk, int enable)
{
 if (BCMCPU_IS_6368())
  bcm_hwclock_set(CKCTL_6368_SWPKT_SAR_EN, enable);
 else
  return;
}
