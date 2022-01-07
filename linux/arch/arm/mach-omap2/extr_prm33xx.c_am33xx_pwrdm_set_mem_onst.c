
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct powerdomain {int pwrstctrl_offs; int prcm_offs; int * mem_on_mask; } ;


 int EINVAL ;
 size_t __ffs (int ) ;
 int am33xx_prm_rmw_reg_bits (int ,size_t,int ,int ) ;

__attribute__((used)) static int am33xx_pwrdm_set_mem_onst(struct powerdomain *pwrdm, u8 bank,
  u8 pwrst)
{
 u32 m;

 m = pwrdm->mem_on_mask[bank];
 if (!m)
  return -EINVAL;

 am33xx_prm_rmw_reg_bits(m, (pwrst << __ffs(m)),
    pwrdm->prcm_offs, pwrdm->pwrstctrl_offs);

 return 0;
}
