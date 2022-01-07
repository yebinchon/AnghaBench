
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int WARN (int ,char*) ;
 int dpll_core_ck ;
 int to_clk_hw_omap (struct clk_hw*) ;

void omap2xxx_clkt_dpllcore_init(struct clk_hw *hw)
{
 WARN(dpll_core_ck, "dpll_core_ck already set - should never happen");
 dpll_core_ck = to_clk_hw_omap(hw);
}
