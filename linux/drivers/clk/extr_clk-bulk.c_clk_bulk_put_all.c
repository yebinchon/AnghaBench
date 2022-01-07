
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_bulk_data {int dummy; } ;


 scalar_t__ IS_ERR_OR_NULL (struct clk_bulk_data*) ;
 int clk_bulk_put (int,struct clk_bulk_data*) ;
 int kfree (struct clk_bulk_data*) ;

void clk_bulk_put_all(int num_clks, struct clk_bulk_data *clks)
{
 if (IS_ERR_OR_NULL(clks))
  return;

 clk_bulk_put(num_clks, clks);

 kfree(clks);
}
