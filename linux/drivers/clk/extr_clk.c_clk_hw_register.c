
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_hw {int dummy; } ;


 int PTR_ERR_OR_ZERO (int ) ;
 int __clk_register (struct device*,int ,struct clk_hw*) ;
 int dev_of_node (struct device*) ;

int clk_hw_register(struct device *dev, struct clk_hw *hw)
{
 return PTR_ERR_OR_ZERO(__clk_register(dev, dev_of_node(dev), hw));
}
