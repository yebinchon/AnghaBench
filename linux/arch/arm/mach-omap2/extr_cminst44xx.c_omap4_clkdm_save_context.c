
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int context; scalar_t__ clkdm_offs; int cm_inst; int prcm_partition; } ;


 int OMAP4430_MODULEMODE_MASK ;
 scalar_t__ OMAP4_CM_CLKSTCTRL ;
 int omap4_cminst_read_inst_reg (int ,int ,scalar_t__) ;

__attribute__((used)) static int omap4_clkdm_save_context(struct clockdomain *clkdm)
{
 clkdm->context = omap4_cminst_read_inst_reg(clkdm->prcm_partition,
          clkdm->cm_inst,
          clkdm->clkdm_offs +
          OMAP4_CM_CLKSTCTRL);
 clkdm->context &= OMAP4430_MODULEMODE_MASK;
 return 0;
}
