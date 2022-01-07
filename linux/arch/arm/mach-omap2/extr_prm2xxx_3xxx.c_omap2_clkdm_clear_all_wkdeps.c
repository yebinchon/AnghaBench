
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* ptr; } ;
struct clockdomain {TYPE_2__ pwrdm; struct clkdm_dep* wkdep_srcs; } ;
struct clkdm_dep {scalar_t__ wkdep_usecount; TYPE_3__* clkdm; scalar_t__ clkdm_name; } ;
struct TYPE_6__ {int dep_bit; } ;
struct TYPE_4__ {int prcm_offs; } ;


 int PM_WKDEP ;
 int omap2_prm_clear_mod_reg_bits (int,int ,int ) ;

int omap2_clkdm_clear_all_wkdeps(struct clockdomain *clkdm)
{
 struct clkdm_dep *cd;
 u32 mask = 0;

 for (cd = clkdm->wkdep_srcs; cd && cd->clkdm_name; cd++) {
  if (!cd->clkdm)
   continue;


  mask |= 1 << cd->clkdm->dep_bit;
  cd->wkdep_usecount = 0;
 }

 omap2_prm_clear_mod_reg_bits(mask, clkdm->pwrdm.ptr->prcm_offs,
         PM_WKDEP);
 return 0;
}
