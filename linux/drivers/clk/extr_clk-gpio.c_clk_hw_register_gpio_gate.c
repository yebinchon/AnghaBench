
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
struct clk_ops {int dummy; } ;
struct clk_hw {int dummy; } ;


 struct clk_ops clk_gpio_gate_ops ;
 struct clk_hw* clk_register_gpio (struct device*,char const*,char const**,int,struct gpio_desc*,unsigned long,struct clk_ops const*) ;
 struct clk_ops clk_sleeping_gpio_gate_ops ;
 scalar_t__ gpiod_cansleep (struct gpio_desc*) ;

struct clk_hw *clk_hw_register_gpio_gate(struct device *dev, const char *name,
  const char *parent_name, struct gpio_desc *gpiod,
  unsigned long flags)
{
 const struct clk_ops *ops;

 if (gpiod_cansleep(gpiod))
  ops = &clk_sleeping_gpio_gate_ops;
 else
  ops = &clk_gpio_gate_ops;

 return clk_register_gpio(dev, name,
   (parent_name ? &parent_name : ((void*)0)),
   (parent_name ? 1 : 0), gpiod, flags, ops);
}
