
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct clk_hw {int dummy; } ;


 int PTR_ERR_OR_ZERO (int ) ;
 int __clk_register (int *,struct device_node*,struct clk_hw*) ;

int of_clk_hw_register(struct device_node *node, struct clk_hw *hw)
{
 return PTR_ERR_OR_ZERO(__clk_register(((void*)0), node, hw));
}
