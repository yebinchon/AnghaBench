
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int flags; } ;


 int CLKDM_CAN_FORCE_WAKEUP ;
 int am33xx_clkdm_wakeup (struct clockdomain*) ;

__attribute__((used)) static int am33xx_clkdm_clk_enable(struct clockdomain *clkdm)
{
 if (clkdm->flags & CLKDM_CAN_FORCE_WAKEUP)
  return am33xx_clkdm_wakeup(clkdm);

 return 0;
}
