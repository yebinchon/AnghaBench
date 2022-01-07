
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct powerdomain {int dummy; } ;
struct omap_hwmod_ocp_if {struct clk* _clk; } ;
struct omap_hwmod {struct clk* _clk; TYPE_3__* clkdm; } ;
struct TYPE_4__ {struct powerdomain* ptr; } ;
struct clockdomain {TYPE_1__ pwrdm; } ;
struct clk_hw_omap {struct clockdomain* clkdm; } ;
struct clk {int dummy; } ;
struct TYPE_5__ {struct powerdomain* ptr; } ;
struct TYPE_6__ {TYPE_2__ pwrdm; } ;


 int __clk_get_hw (struct clk*) ;
 struct omap_hwmod_ocp_if* _find_mpu_rt_port (struct omap_hwmod*) ;
 struct clk_hw_omap* to_clk_hw_omap (int ) ;

struct powerdomain *omap_hwmod_get_pwrdm(struct omap_hwmod *oh)
{
 struct clk *c;
 struct omap_hwmod_ocp_if *oi;
 struct clockdomain *clkdm;
 struct clk_hw_omap *clk;

 if (!oh)
  return ((void*)0);

 if (oh->clkdm)
  return oh->clkdm->pwrdm.ptr;

 if (oh->_clk) {
  c = oh->_clk;
 } else {
  oi = _find_mpu_rt_port(oh);
  if (!oi)
   return ((void*)0);
  c = oi->_clk;
 }

 clk = to_clk_hw_omap(__clk_get_hw(c));
 clkdm = clk->clkdm;
 if (!clkdm)
  return ((void*)0);

 return clkdm->pwrdm.ptr;
}
