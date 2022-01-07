
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int clkdm_offs; int cm_inst; int prcm_partition; } ;


 int omap4_cminst_clkdm_force_wakeup (int ,int ,int ) ;

__attribute__((used)) static int omap4_clkdm_wakeup(struct clockdomain *clkdm)
{
 omap4_cminst_clkdm_force_wakeup(clkdm->prcm_partition,
     clkdm->cm_inst, clkdm->clkdm_offs);
 return 0;
}
