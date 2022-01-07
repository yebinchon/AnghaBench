
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clockdomain {int dummy; } ;
struct TYPE_2__ {int (* clkdm_clear_all_sleepdeps ) (struct clockdomain*) ;} ;


 int EINVAL ;
 TYPE_1__* arch_clkdm ;
 int stub1 (struct clockdomain*) ;

int clkdm_clear_all_sleepdeps(struct clockdomain *clkdm)
{
 if (!clkdm)
  return -EINVAL;

 if (!arch_clkdm || !arch_clkdm->clkdm_clear_all_sleepdeps)
  return -EINVAL;

 return arch_clkdm->clkdm_clear_all_sleepdeps(clkdm);
}
