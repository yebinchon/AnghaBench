
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int dummy; } ;


 int EEXIST ;
 int EINVAL ;
 int _pwrdm_register (struct powerdomain*) ;
 int arch_pwrdm ;

int pwrdm_register_pwrdms(struct powerdomain **ps)
{
 struct powerdomain **p = ((void*)0);

 if (!arch_pwrdm)
  return -EEXIST;

 if (!ps)
  return -EINVAL;

 for (p = ps; *p; p++)
  _pwrdm_register(*p);

 return 0;
}
