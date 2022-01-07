
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ptr; } ;
struct clockdomain {scalar_t__ usecount; int clktrctrl_mask; TYPE_2__ pwrdm; } ;
struct TYPE_3__ {int prcm_offs; } ;


 int clkdm_add_autodeps (struct clockdomain*) ;
 int omap3xxx_cm_clkdm_enable_hwsup (int ,int ) ;

__attribute__((used)) static void omap3xxx_clkdm_allow_idle(struct clockdomain *clkdm)
{
 if (clkdm->usecount > 0)
  clkdm_add_autodeps(clkdm);

 omap3xxx_cm_clkdm_enable_hwsup(clkdm->pwrdm.ptr->prcm_offs,
           clkdm->clktrctrl_mask);
}
