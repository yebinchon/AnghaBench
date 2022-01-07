
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int dummy; } ;


 int clkdm_allow_idle (struct clockdomain*) ;

int omap_pm_clkdms_setup(struct clockdomain *clkdm, void *unused)
{
 clkdm_allow_idle(clkdm);
 return 0;
}
