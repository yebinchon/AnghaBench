
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {scalar_t__ id; } ;


 scalar_t__ BCMCPU_IS_3368 () ;
 scalar_t__ BCMCPU_IS_6358 () ;
 int CKCTL_6358_ENET0_EN ;
 int CKCTL_6358_ENET1_EN ;
 int bcm_hwclock_set (int ,int) ;
 int clk_disable_unlocked (int *) ;
 int clk_enable_unlocked (int *) ;
 int clk_enet_misc ;

__attribute__((used)) static void enetx_set(struct clk *clk, int enable)
{
 if (enable)
  clk_enable_unlocked(&clk_enet_misc);
 else
  clk_disable_unlocked(&clk_enet_misc);

 if (BCMCPU_IS_3368() || BCMCPU_IS_6358()) {
  u32 mask;

  if (clk->id == 0)
   mask = CKCTL_6358_ENET0_EN;
  else
   mask = CKCTL_6358_ENET1_EN;
  bcm_hwclock_set(mask, enable);
 }
}
