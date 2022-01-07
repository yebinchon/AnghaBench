
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int pwrstst_offs; int prcm_offs; } ;


 int AM33XX_LASTPOWERSTATEENTERED_MASK ;
 int am33xx_prm_rmw_reg_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int am33xx_pwrdm_clear_all_prev_pwrst(struct powerdomain *pwrdm)
{
 am33xx_prm_rmw_reg_bits(AM33XX_LASTPOWERSTATEENTERED_MASK,
    AM33XX_LASTPOWERSTATEENTERED_MASK,
    pwrdm->prcm_offs, pwrdm->pwrstst_offs);
 return 0;
}
