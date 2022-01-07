
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int context; int pwrstctrl_offs; int prcm_offs; int prcm_partition; } ;


 int OMAP4430_LOWPOWERSTATECHANGE_MASK ;
 int omap4_prminst_read_inst_reg (int ,int ,int ) ;

__attribute__((used)) static void omap4_pwrdm_save_context(struct powerdomain *pwrdm)
{
 pwrdm->context = omap4_prminst_read_inst_reg(pwrdm->prcm_partition,
           pwrdm->prcm_offs,
           pwrdm->pwrstctrl_offs);





 pwrdm->context &= ~OMAP4430_LOWPOWERSTATECHANGE_MASK;
}
