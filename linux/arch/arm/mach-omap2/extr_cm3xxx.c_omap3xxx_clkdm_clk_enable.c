
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ptr; } ;
struct clockdomain {int flags; int clktrctrl_mask; TYPE_2__ pwrdm; } ;
struct TYPE_3__ {int prcm_offs; } ;


 int CLKDM_CAN_FORCE_WAKEUP ;
 int CLKDM_MISSING_IDLE_REPORTING ;
 int clkdm_add_autodeps (struct clockdomain*) ;
 int omap3xxx_clkdm_wakeup (struct clockdomain*) ;
 int omap3xxx_cm_clkdm_disable_hwsup (int ,int ) ;
 int omap3xxx_cm_clkdm_enable_hwsup (int ,int ) ;
 int omap3xxx_cm_is_clkdm_in_hwsup (int ,int ) ;

__attribute__((used)) static int omap3xxx_clkdm_clk_enable(struct clockdomain *clkdm)
{
 bool hwsup = 0;

 if (!clkdm->clktrctrl_mask)
  return 0;






 if ((clkdm->flags & CLKDM_MISSING_IDLE_REPORTING) &&
     (clkdm->flags & CLKDM_CAN_FORCE_WAKEUP)) {
  omap3xxx_clkdm_wakeup(clkdm);
  return 0;
 }

 hwsup = omap3xxx_cm_is_clkdm_in_hwsup(clkdm->pwrdm.ptr->prcm_offs,
           clkdm->clktrctrl_mask);

 if (hwsup) {

  omap3xxx_cm_clkdm_disable_hwsup(clkdm->pwrdm.ptr->prcm_offs,
      clkdm->clktrctrl_mask);
  clkdm_add_autodeps(clkdm);
  omap3xxx_cm_clkdm_enable_hwsup(clkdm->pwrdm.ptr->prcm_offs,
            clkdm->clktrctrl_mask);
 } else {
  if (clkdm->flags & CLKDM_CAN_FORCE_WAKEUP)
   omap3xxx_clkdm_wakeup(clkdm);
 }

 return 0;
}
