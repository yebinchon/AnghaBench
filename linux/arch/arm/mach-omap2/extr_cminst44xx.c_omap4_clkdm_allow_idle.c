
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int clkdm_offs; int cm_inst; int prcm_partition; } ;


 int omap4_cminst_clkdm_enable_hwsup (int ,int ,int ) ;

__attribute__((used)) static void omap4_clkdm_allow_idle(struct clockdomain *clkdm)
{
 omap4_cminst_clkdm_enable_hwsup(clkdm->prcm_partition,
     clkdm->cm_inst, clkdm->clkdm_offs);
}
