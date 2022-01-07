
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int flags; int clkdm_offs; int cm_inst; int prcm_partition; } ;


 int CLKDM_CAN_FORCE_WAKEUP ;
 int omap4_clkdm_wakeup (struct clockdomain*) ;
 int omap4_cminst_clkdm_disable_hwsup (int ,int ,int ) ;

__attribute__((used)) static void omap4_clkdm_deny_idle(struct clockdomain *clkdm)
{
 if (clkdm->flags & CLKDM_CAN_FORCE_WAKEUP)
  omap4_clkdm_wakeup(clkdm);
 else
  omap4_cminst_clkdm_disable_hwsup(clkdm->prcm_partition,
       clkdm->cm_inst,
       clkdm->clkdm_offs);
}
