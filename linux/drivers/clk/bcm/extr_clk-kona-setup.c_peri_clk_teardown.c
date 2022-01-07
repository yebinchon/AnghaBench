
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peri_clk_data {int sel; } ;
struct clk_init_data {int dummy; } ;


 int clk_sel_teardown (int *,struct clk_init_data*) ;

__attribute__((used)) static void peri_clk_teardown(struct peri_clk_data *data,
    struct clk_init_data *init_data)
{
 clk_sel_teardown(&data->sel, init_data);
}
