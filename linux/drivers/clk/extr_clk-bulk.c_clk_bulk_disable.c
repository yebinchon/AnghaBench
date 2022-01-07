
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_bulk_data {int clk; } ;


 int clk_disable (int ) ;

void clk_bulk_disable(int num_clks, const struct clk_bulk_data *clks)
{

 while (--num_clks >= 0)
  clk_disable(clks[num_clks].clk);
}
