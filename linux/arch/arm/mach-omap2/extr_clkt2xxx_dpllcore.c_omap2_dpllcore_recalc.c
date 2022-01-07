
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 unsigned long omap2xxx_clk_get_core_rate () ;

unsigned long omap2_dpllcore_recalc(struct clk_hw *hw,
        unsigned long parent_rate)
{
 return omap2xxx_clk_get_core_rate();
}
