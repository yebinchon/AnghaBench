
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct powerdomain {int pwrstst_offs; int prcm_offs; } ;


 int AM33XX_LOGICSTATEST_MASK ;
 int AM33XX_LOGICSTATEST_SHIFT ;
 int am33xx_prm_read_reg (int ,int ) ;

__attribute__((used)) static int am33xx_pwrdm_read_logic_pwrst(struct powerdomain *pwrdm)
{
 u32 v;

 v = am33xx_prm_read_reg(pwrdm->prcm_offs, pwrdm->pwrstst_offs);
 v &= AM33XX_LOGICSTATEST_MASK;
 v >>= AM33XX_LOGICSTATEST_SHIFT;

 return v;
}
