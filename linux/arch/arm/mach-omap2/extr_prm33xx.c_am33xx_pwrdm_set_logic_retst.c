
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct powerdomain {int pwrstctrl_offs; int prcm_offs; int logicretstate_mask; } ;


 int EINVAL ;
 int __ffs (int ) ;
 int am33xx_prm_rmw_reg_bits (int ,int,int ,int ) ;

__attribute__((used)) static int am33xx_pwrdm_set_logic_retst(struct powerdomain *pwrdm, u8 pwrst)
{
 u32 m;

 m = pwrdm->logicretstate_mask;
 if (!m)
  return -EINVAL;

 am33xx_prm_rmw_reg_bits(m, (pwrst << __ffs(m)),
    pwrdm->prcm_offs, pwrdm->pwrstctrl_offs);

 return 0;
}
