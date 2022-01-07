
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_plt {int lookup; } ;


 int clkdev_drop (int ) ;

__attribute__((used)) static void plt_clk_unregister(struct clk_plt *pclk)
{
 clkdev_drop(pclk->lookup);
}
