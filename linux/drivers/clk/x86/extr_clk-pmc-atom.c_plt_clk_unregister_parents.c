
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_plt_data {int nparents; } ;


 int plt_clk_unregister_fixed_rate_loop (struct clk_plt_data*,int ) ;

__attribute__((used)) static void plt_clk_unregister_parents(struct clk_plt_data *data)
{
 plt_clk_unregister_fixed_rate_loop(data, data->nparents);
}
