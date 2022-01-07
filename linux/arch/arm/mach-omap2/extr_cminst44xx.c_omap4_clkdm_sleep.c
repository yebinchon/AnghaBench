
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int flags; int clkdm_offs; int cm_inst; int prcm_partition; } ;


 int CLKDM_CAN_FORCE_SLEEP ;
 int CLKDM_CAN_HWSUP ;
 int EINVAL ;
 int omap4_cminst_clkdm_enable_hwsup (int ,int ,int ) ;
 int omap4_cminst_clkdm_force_sleep (int ,int ,int ) ;

__attribute__((used)) static int omap4_clkdm_sleep(struct clockdomain *clkdm)
{
 if (clkdm->flags & CLKDM_CAN_HWSUP)
  omap4_cminst_clkdm_enable_hwsup(clkdm->prcm_partition,
      clkdm->cm_inst,
      clkdm->clkdm_offs);
 else if (clkdm->flags & CLKDM_CAN_FORCE_SLEEP)
  omap4_cminst_clkdm_force_sleep(clkdm->prcm_partition,
            clkdm->cm_inst,
            clkdm->clkdm_offs);
 else
  return -EINVAL;

 return 0;
}
