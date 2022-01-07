
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct powerdomain {int dummy; } ;
struct TYPE_2__ {struct powerdomain* ptr; } ;
struct clockdomain {TYPE_1__ pwrdm; } ;



struct powerdomain *clkdm_get_pwrdm(struct clockdomain *clkdm)
{
 if (!clkdm)
  return ((void*)0);

 return clkdm->pwrdm.ptr;
}
