
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int dummy; } ;
struct clk_hw_omap {scalar_t__ clkdm_name; } ;
struct clk {int dummy; } ;


 int __clk_get_hw (struct clk*) ;
 struct clockdomain* clkdm_lookup (scalar_t__) ;
 struct clk_hw_omap* to_clk_hw_omap (int ) ;

__attribute__((used)) static struct clockdomain *ti_sysc_find_one_clockdomain(struct clk *clk)
{
 struct clockdomain *clkdm = ((void*)0);
 struct clk_hw_omap *hwclk;

 hwclk = to_clk_hw_omap(__clk_get_hw(clk));
 if (hwclk && hwclk->clkdm_name)
  clkdm = clkdm_lookup(hwclk->clkdm_name);

 return clkdm;
}
