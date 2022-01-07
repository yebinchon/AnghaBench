
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct powerdomain {int* mem_retst_mask; int pwrstctrl_offs; int prcm_offs; } ;


 int EINVAL ;
 int __ffs (int) ;
 int am33xx_prm_read_reg (int ,int ) ;

__attribute__((used)) static int am33xx_pwrdm_read_mem_retst(struct powerdomain *pwrdm, u8 bank)
{
 u32 m, v;

 m = pwrdm->mem_retst_mask[bank];
 if (!m)
  return -EINVAL;

 v = am33xx_prm_read_reg(pwrdm->prcm_offs, pwrdm->pwrstctrl_offs);
 v &= m;
 v >>= __ffs(m);

 return v;
}
