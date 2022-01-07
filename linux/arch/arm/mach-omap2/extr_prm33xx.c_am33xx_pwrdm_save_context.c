
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int context; int pwrstctrl_offs; int prcm_offs; } ;


 int AM33XX_LOWPOWERSTATECHANGE_MASK ;
 int am33xx_prm_read_reg (int ,int ) ;

__attribute__((used)) static void am33xx_pwrdm_save_context(struct powerdomain *pwrdm)
{
 pwrdm->context = am33xx_prm_read_reg(pwrdm->prcm_offs,
      pwrdm->pwrstctrl_offs);




 pwrdm->context &= ~AM33XX_LOWPOWERSTATECHANGE_MASK;
}
