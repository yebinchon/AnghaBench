
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hwmod {scalar_t__ _clk; struct clockdomain* clkdm; } ;
struct clockdomain {int dummy; } ;
struct clk_hw_omap {struct clockdomain* clkdm; } ;


 int __clk_get_hw (scalar_t__) ;
 int omap2_clk_is_hw_omap (int ) ;
 struct clk_hw_omap* to_clk_hw_omap (int ) ;

__attribute__((used)) static struct clockdomain *_get_clkdm(struct omap_hwmod *oh)
{
 struct clk_hw_omap *clk;

 if (oh->clkdm) {
  return oh->clkdm;
 } else if (oh->_clk) {
  if (!omap2_clk_is_hw_omap(__clk_get_hw(oh->_clk)))
   return ((void*)0);
  clk = to_clk_hw_omap(__clk_get_hw(oh->_clk));
  return clk->clkdm;
 }
 return ((void*)0);
}
