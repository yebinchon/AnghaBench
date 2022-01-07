
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int flags; int clkdm_offs; int cm_inst; int prcm_partition; } ;


 int CLKDM_CAN_FORCE_SLEEP ;
 int CLKDM_MISSING_IDLE_REPORTING ;
 int omap4_clkdm_allow_idle (struct clockdomain*) ;
 int omap4_clkdm_sleep (struct clockdomain*) ;
 int omap4_cminst_is_clkdm_in_hwsup (int ,int ,int ) ;

__attribute__((used)) static int omap4_clkdm_clk_disable(struct clockdomain *clkdm)
{
 bool hwsup = 0;

 if (!clkdm->prcm_partition)
  return 0;






 if (clkdm->flags & CLKDM_MISSING_IDLE_REPORTING &&
     !(clkdm->flags & CLKDM_CAN_FORCE_SLEEP)) {
  omap4_clkdm_allow_idle(clkdm);
  return 0;
 }

 hwsup = omap4_cminst_is_clkdm_in_hwsup(clkdm->prcm_partition,
     clkdm->cm_inst, clkdm->clkdm_offs);

 if (!hwsup && (clkdm->flags & CLKDM_CAN_FORCE_SLEEP))
  omap4_clkdm_sleep(clkdm);

 return 0;
}
