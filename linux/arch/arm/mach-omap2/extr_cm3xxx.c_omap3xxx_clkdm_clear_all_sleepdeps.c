
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* ptr; } ;
struct clockdomain {TYPE_2__ pwrdm; struct clkdm_dep* sleepdep_srcs; } ;
struct clkdm_dep {scalar_t__ sleepdep_usecount; TYPE_3__* clkdm; scalar_t__ clkdm_name; } ;
struct TYPE_6__ {int dep_bit; } ;
struct TYPE_4__ {int prcm_offs; } ;


 int OMAP3430_CM_SLEEPDEP ;
 int omap2_cm_clear_mod_reg_bits (int,int ,int ) ;

__attribute__((used)) static int omap3xxx_clkdm_clear_all_sleepdeps(struct clockdomain *clkdm)
{
 struct clkdm_dep *cd;
 u32 mask = 0;

 for (cd = clkdm->sleepdep_srcs; cd && cd->clkdm_name; cd++) {
  if (!cd->clkdm)
   continue;

  mask |= 1 << cd->clkdm->dep_bit;
  cd->sleepdep_usecount = 0;
 }
 omap2_cm_clear_mod_reg_bits(mask, clkdm->pwrdm.ptr->prcm_offs,
        OMAP3430_CM_SLEEPDEP);
 return 0;
}
