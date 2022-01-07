
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int context; int pwrstctrl_offs; int prcm_offs; int prcm_partition; } ;


 int OMAP_POWERSTATEST_MASK ;
 int omap4_prminst_read_inst_reg (int ,int ,int ) ;
 int omap4_prminst_write_inst_reg (int,int ,int ,int ) ;
 int omap4_pwrdm_wait_transition (struct powerdomain*) ;

__attribute__((used)) static void omap4_pwrdm_restore_context(struct powerdomain *pwrdm)
{
 int st, ctrl;

 st = omap4_prminst_read_inst_reg(pwrdm->prcm_partition,
      pwrdm->prcm_offs,
      pwrdm->pwrstctrl_offs);

 omap4_prminst_write_inst_reg(pwrdm->context,
         pwrdm->prcm_partition,
         pwrdm->prcm_offs,
         pwrdm->pwrstctrl_offs);


 st &= OMAP_POWERSTATEST_MASK;
 ctrl = OMAP_POWERSTATEST_MASK & pwrdm->context;

 if (st != ctrl)
  omap4_pwrdm_wait_transition(pwrdm);
}
