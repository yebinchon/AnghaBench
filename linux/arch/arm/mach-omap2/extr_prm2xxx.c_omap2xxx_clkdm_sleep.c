
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ptr; } ;
struct clockdomain {TYPE_2__ pwrdm; } ;
struct TYPE_3__ {int prcm_offs; } ;


 int OMAP24XX_FORCESTATE_MASK ;
 int OMAP2_PM_PWSTCTRL ;
 int omap2_prm_set_mod_reg_bits (int ,int ,int ) ;

int omap2xxx_clkdm_sleep(struct clockdomain *clkdm)
{
 omap2_prm_set_mod_reg_bits(OMAP24XX_FORCESTATE_MASK,
       clkdm->pwrdm.ptr->prcm_offs,
       OMAP2_PM_PWSTCTRL);
 return 0;
}
