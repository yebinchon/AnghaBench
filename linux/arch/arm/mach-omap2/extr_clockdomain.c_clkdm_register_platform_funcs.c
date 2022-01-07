
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clkdm_ops {int dummy; } ;


 int EEXIST ;
 int EINVAL ;
 struct clkdm_ops* arch_clkdm ;

int clkdm_register_platform_funcs(struct clkdm_ops *co)
{
 if (!co)
  return -EINVAL;

 if (arch_clkdm)
  return -EEXIST;

 arch_clkdm = co;

 return 0;
}
