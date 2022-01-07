
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ptr; } ;
struct clockdomain {int clktrctrl_mask; TYPE_2__ pwrdm; } ;
struct TYPE_3__ {int prcm_offs; } ;


 int omap3xxx_cm_clkdm_force_sleep (int ,int ) ;

__attribute__((used)) static int omap3xxx_clkdm_sleep(struct clockdomain *clkdm)
{
 omap3xxx_cm_clkdm_force_sleep(clkdm->pwrdm.ptr->prcm_offs,
          clkdm->clktrctrl_mask);
 return 0;
}
