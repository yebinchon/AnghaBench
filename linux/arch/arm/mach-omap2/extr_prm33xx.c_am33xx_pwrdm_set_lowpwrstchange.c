
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int pwrstctrl_offs; int prcm_offs; } ;


 int AM33XX_LOWPOWERSTATECHANGE_MASK ;
 int AM33XX_LOWPOWERSTATECHANGE_SHIFT ;
 int am33xx_prm_rmw_reg_bits (int ,int,int ,int ) ;

__attribute__((used)) static int am33xx_pwrdm_set_lowpwrstchange(struct powerdomain *pwrdm)
{
 am33xx_prm_rmw_reg_bits(AM33XX_LOWPOWERSTATECHANGE_MASK,
    (1 << AM33XX_LOWPOWERSTATECHANGE_SHIFT),
    pwrdm->prcm_offs, pwrdm->pwrstctrl_offs);
 return 0;
}
