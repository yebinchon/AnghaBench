
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int dummy; } ;


 int EACCES ;
 int EINVAL ;
 int _clkdm_register (struct clockdomain*) ;
 int arch_clkdm ;

int clkdm_register_clkdms(struct clockdomain **cs)
{
 struct clockdomain **c = ((void*)0);

 if (!arch_clkdm)
  return -EACCES;

 if (!cs)
  return -EINVAL;

 for (c = cs; *c; c++)
  _clkdm_register(*c);

 return 0;
}
