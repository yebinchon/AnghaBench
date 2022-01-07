
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct powerdomain {int pwrstctrl_offs; int prcm_offs; } ;


 int OMAP_POWERSTATE_MASK ;
 int OMAP_POWERSTATE_SHIFT ;
 int am33xx_prm_read_reg (int ,int ) ;

__attribute__((used)) static int am33xx_pwrdm_read_next_pwrst(struct powerdomain *pwrdm)
{
 u32 v;

 v = am33xx_prm_read_reg(pwrdm->prcm_offs, pwrdm->pwrstctrl_offs);
 v &= OMAP_POWERSTATE_MASK;
 v >>= OMAP_POWERSTATE_SHIFT;

 return v;
}
