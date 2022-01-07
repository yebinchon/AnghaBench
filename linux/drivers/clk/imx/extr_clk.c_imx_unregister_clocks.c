
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int clk_unregister (struct clk*) ;

void imx_unregister_clocks(struct clk *clks[], unsigned int count)
{
 unsigned int i;

 for (i = 0; i < count; i++)
  clk_unregister(clks[i]);
}
