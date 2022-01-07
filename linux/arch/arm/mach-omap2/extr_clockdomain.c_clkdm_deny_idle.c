
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptr; } ;
struct clockdomain {TYPE_1__ pwrdm; } ;


 int clkdm_deny_idle_nolock (struct clockdomain*) ;
 int pwrdm_lock (int ) ;
 int pwrdm_unlock (int ) ;

void clkdm_deny_idle(struct clockdomain *clkdm)
{
 pwrdm_lock(clkdm->pwrdm.ptr);
 clkdm_deny_idle_nolock(clkdm);
 pwrdm_unlock(clkdm->pwrdm.ptr);
}
