
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peri_clk_data {int sel; int clocks; } ;
struct clk_init_data {int flags; } ;


 int CLK_IGNORE_UNUSED ;
 int clk_sel_setup (int ,int *,struct clk_init_data*) ;

__attribute__((used)) static int
peri_clk_setup(struct peri_clk_data *data, struct clk_init_data *init_data)
{
 init_data->flags = CLK_IGNORE_UNUSED;

 return clk_sel_setup(data->clocks, &data->sel, init_data);
}
