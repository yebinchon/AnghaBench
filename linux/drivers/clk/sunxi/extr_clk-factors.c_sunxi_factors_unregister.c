
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct clk_hw {int dummy; } ;
struct clk_factors {struct clk_factors* gate; struct clk_factors* mux; } ;
struct clk {int dummy; } ;


 struct clk_hw* __clk_get_hw (struct clk*) ;
 int clk_unregister (struct clk*) ;
 int kfree (struct clk_factors*) ;
 int of_clk_del_provider (struct device_node*) ;
 struct clk_factors* to_clk_factors (struct clk_hw*) ;

void sunxi_factors_unregister(struct device_node *node, struct clk *clk)
{
 struct clk_hw *hw = __clk_get_hw(clk);
 struct clk_factors *factors;

 if (!hw)
  return;

 factors = to_clk_factors(hw);

 of_clk_del_provider(node);

 clk_unregister(clk);
 kfree(factors->mux);
 kfree(factors->gate);
 kfree(factors);
}
