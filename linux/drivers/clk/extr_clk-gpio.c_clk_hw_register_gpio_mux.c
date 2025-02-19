
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 struct clk_hw* ERR_PTR (int ) ;
 int clk_gpio_mux_ops ;
 struct clk_hw* clk_register_gpio (struct device*,char const*,char const* const*,int,struct gpio_desc*,unsigned long,int *) ;
 int pr_err (char*,char const*) ;

struct clk_hw *clk_hw_register_gpio_mux(struct device *dev, const char *name,
  const char * const *parent_names, u8 num_parents, struct gpio_desc *gpiod,
  unsigned long flags)
{
 if (num_parents != 2) {
  pr_err("mux-clock %s must have 2 parents\n", name);
  return ERR_PTR(-EINVAL);
 }

 return clk_register_gpio(dev, name, parent_names, num_parents,
   gpiod, flags, &clk_gpio_mux_ops);
}
