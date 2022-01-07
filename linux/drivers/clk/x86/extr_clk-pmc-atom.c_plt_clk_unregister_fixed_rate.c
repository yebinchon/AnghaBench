
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_plt_fixed {int clk; int lookup; } ;


 int clk_hw_unregister_fixed_rate (int ) ;
 int clkdev_drop (int ) ;

__attribute__((used)) static void plt_clk_unregister_fixed_rate(struct clk_plt_fixed *pclk)
{
 clkdev_drop(pclk->lookup);
 clk_hw_unregister_fixed_rate(pclk->clk);
}
