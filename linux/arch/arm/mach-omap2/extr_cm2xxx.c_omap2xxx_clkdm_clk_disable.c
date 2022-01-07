
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ptr; } ;
struct clockdomain {int flags; int clktrctrl_mask; TYPE_2__ pwrdm; } ;
struct TYPE_3__ {int prcm_offs; } ;


 int CLKDM_CAN_FORCE_SLEEP ;
 int omap2xxx_clkdm_sleep (struct clockdomain*) ;
 int omap2xxx_cm_is_clkdm_in_hwsup (int ,int ) ;

__attribute__((used)) static int omap2xxx_clkdm_clk_disable(struct clockdomain *clkdm)
{
 bool hwsup = 0;

 if (!clkdm->clktrctrl_mask)
  return 0;

 hwsup = omap2xxx_cm_is_clkdm_in_hwsup(clkdm->pwrdm.ptr->prcm_offs,
           clkdm->clktrctrl_mask);

 if (!hwsup && clkdm->flags & CLKDM_CAN_FORCE_SLEEP)
  omap2xxx_clkdm_sleep(clkdm);

 return 0;
}
