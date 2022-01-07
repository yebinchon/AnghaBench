
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwrdm_ops {int dummy; } ;


 int EEXIST ;
 int EINVAL ;
 struct pwrdm_ops* arch_pwrdm ;

int pwrdm_register_platform_funcs(struct pwrdm_ops *po)
{
 if (!po)
  return -EINVAL;

 if (arch_pwrdm)
  return -EEXIST;

 arch_pwrdm = po;

 return 0;
}
