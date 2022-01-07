
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptr; } ;
struct clockdomain {TYPE_1__ pwrdm; } ;


 int clkdm_sleep_nolock (struct clockdomain*) ;
 int pwrdm_lock (int ) ;
 int pwrdm_unlock (int ) ;

int clkdm_sleep(struct clockdomain *clkdm)
{
 int ret;

 pwrdm_lock(clkdm->pwrdm.ptr);
 ret = clkdm_sleep_nolock(clkdm);
 pwrdm_unlock(clkdm->pwrdm.ptr);

 return ret;
}
