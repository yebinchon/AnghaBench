
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int context; int pwrstctrl_offs; int prcm_offs; int pwrstst_offs; } ;


 int OMAP_POWERSTATEST_MASK ;
 int am33xx_prm_read_reg (int ,int ) ;
 int am33xx_prm_write_reg (int,int ,int ) ;
 int am33xx_pwrdm_wait_transition (struct powerdomain*) ;

__attribute__((used)) static void am33xx_pwrdm_restore_context(struct powerdomain *pwrdm)
{
 int st, ctrl;

 st = am33xx_prm_read_reg(pwrdm->prcm_offs,
     pwrdm->pwrstst_offs);

 am33xx_prm_write_reg(pwrdm->context, pwrdm->prcm_offs,
        pwrdm->pwrstctrl_offs);


 st &= OMAP_POWERSTATEST_MASK;
 ctrl = OMAP_POWERSTATEST_MASK & pwrdm->context;

 if (st != ctrl)
  am33xx_pwrdm_wait_transition(pwrdm);
}
