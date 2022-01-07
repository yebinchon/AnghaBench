
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct powerdomain {int pwrstctrl_offs; int prcm_offs; } ;


 int OMAP_POWERSTATE_MASK ;
 int OMAP_POWERSTATE_SHIFT ;
 int am33xx_prm_rmw_reg_bits (int ,int,int ,int ) ;

__attribute__((used)) static int am33xx_pwrdm_set_next_pwrst(struct powerdomain *pwrdm, u8 pwrst)
{
 am33xx_prm_rmw_reg_bits(OMAP_POWERSTATE_MASK,
    (pwrst << OMAP_POWERSTATE_SHIFT),
    pwrdm->prcm_offs, pwrdm->pwrstctrl_offs);
 return 0;
}
