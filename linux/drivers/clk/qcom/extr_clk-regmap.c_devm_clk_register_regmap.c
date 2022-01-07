
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device* parent; } ;
struct clk_regmap {int hw; void* regmap; } ;


 void* dev_get_regmap (struct device*,int *) ;
 int devm_clk_hw_register (struct device*,int *) ;

int devm_clk_register_regmap(struct device *dev, struct clk_regmap *rclk)
{
 if (dev && dev_get_regmap(dev, ((void*)0)))
  rclk->regmap = dev_get_regmap(dev, ((void*)0));
 else if (dev && dev->parent)
  rclk->regmap = dev_get_regmap(dev->parent, ((void*)0));

 return devm_clk_hw_register(dev, &rclk->hw);
}
