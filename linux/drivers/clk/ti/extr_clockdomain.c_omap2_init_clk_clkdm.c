
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clockdomain {int dummy; } ;
struct clk_hw_omap {int clkdm_name; struct clockdomain* clkdm; } ;
struct clk_hw {int clk; } ;
struct TYPE_2__ {struct clockdomain* (* clkdm_lookup ) (int ) ;} ;


 char* __clk_get_name (int ) ;
 int pr_debug (char*,char const*,int ) ;
 struct clockdomain* stub1 (int ) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

void omap2_init_clk_clkdm(struct clk_hw *hw)
{
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);
 struct clockdomain *clkdm;
 const char *clk_name;

 if (!clk->clkdm_name)
  return;

 clk_name = __clk_get_name(hw->clk);

 clkdm = ti_clk_ll_ops->clkdm_lookup(clk->clkdm_name);
 if (clkdm) {
  pr_debug("clock: associated clk %s to clkdm %s\n",
    clk_name, clk->clkdm_name);
  clk->clkdm = clkdm;
 } else {
  pr_debug("clock: could not associate clk %s to clkdm %s\n",
    clk_name, clk->clkdm_name);
 }
}
