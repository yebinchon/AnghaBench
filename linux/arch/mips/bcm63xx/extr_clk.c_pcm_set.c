
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ BCMCPU_IS_3368 () ;
 scalar_t__ BCMCPU_IS_6358 () ;
 int CKCTL_3368_PCM_EN ;
 int CKCTL_6358_PCM_EN ;
 int bcm_hwclock_set (int ,int) ;

__attribute__((used)) static void pcm_set(struct clk *clk, int enable)
{
 if (BCMCPU_IS_3368())
  bcm_hwclock_set(CKCTL_3368_PCM_EN, enable);
 if (BCMCPU_IS_6358())
  bcm_hwclock_set(CKCTL_6358_PCM_EN, enable);
}
