
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_plt_data {int * clks; } ;


 int plt_clk_unregister (int ) ;

__attribute__((used)) static void plt_clk_unregister_loop(struct clk_plt_data *data,
        unsigned int i)
{
 while (i--)
  plt_clk_unregister(data->clks[i]);
}
