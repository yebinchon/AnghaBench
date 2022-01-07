
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hwmod {int dummy; } ;
struct clockdomain {int dummy; } ;


 int EINVAL ;
 int _clkdm_clk_hwmod_enable (struct clockdomain*) ;
 scalar_t__ cpu_is_omap24xx () ;
 scalar_t__ cpu_is_omap34xx () ;

int clkdm_hwmod_enable(struct clockdomain *clkdm, struct omap_hwmod *oh)
{

 if (cpu_is_omap24xx() || cpu_is_omap34xx())
  return 0;






 if (!oh)
  return -EINVAL;

 return _clkdm_clk_hwmod_enable(clkdm);
}
