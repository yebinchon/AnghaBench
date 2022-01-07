
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ptr; } ;
struct clockdomain {int dep_bit; TYPE_2__ pwrdm; } ;
struct TYPE_3__ {int prcm_offs; } ;


 int OMAP3430_CM_SLEEPDEP ;
 int omap2_cm_read_mod_bits_shift (int ,int ,int) ;

__attribute__((used)) static int omap3xxx_clkdm_read_sleepdep(struct clockdomain *clkdm1,
     struct clockdomain *clkdm2)
{
 return omap2_cm_read_mod_bits_shift(clkdm1->pwrdm.ptr->prcm_offs,
         OMAP3430_CM_SLEEPDEP,
         (1 << clkdm2->dep_bit));
}
