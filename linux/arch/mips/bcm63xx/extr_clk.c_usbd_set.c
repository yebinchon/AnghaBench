
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ BCMCPU_IS_6328 () ;
 scalar_t__ BCMCPU_IS_6362 () ;
 scalar_t__ BCMCPU_IS_6368 () ;
 int CKCTL_6328_USBD_EN ;
 int CKCTL_6362_USBD_EN ;
 int CKCTL_6368_USBD_EN ;
 int bcm_hwclock_set (int ,int) ;

__attribute__((used)) static void usbd_set(struct clk *clk, int enable)
{
 if (BCMCPU_IS_6328())
  bcm_hwclock_set(CKCTL_6328_USBD_EN, enable);
 else if (BCMCPU_IS_6362())
  bcm_hwclock_set(CKCTL_6362_USBD_EN, enable);
 else if (BCMCPU_IS_6368())
  bcm_hwclock_set(CKCTL_6368_USBD_EN, enable);
}
