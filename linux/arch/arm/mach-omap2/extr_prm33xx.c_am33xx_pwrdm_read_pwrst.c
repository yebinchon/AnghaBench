
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct powerdomain {int pwrstst_offs; int prcm_offs; } ;


 int OMAP_POWERSTATEST_MASK ;
 int OMAP_POWERSTATEST_SHIFT ;
 int am33xx_prm_read_reg (int ,int ) ;

__attribute__((used)) static int am33xx_pwrdm_read_pwrst(struct powerdomain *pwrdm)
{
 u32 v;

 v = am33xx_prm_read_reg(pwrdm->prcm_offs, pwrdm->pwrstst_offs);
 v &= OMAP_POWERSTATEST_MASK;
 v >>= OMAP_POWERSTATEST_SHIFT;

 return v;
}
