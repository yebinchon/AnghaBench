
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_hw {int dummy; } ;


 struct clk_hw* clk_hw_register_fixed_rate_with_accuracy (struct device*,char const*,char const*,unsigned long,unsigned long,int ) ;

struct clk_hw *clk_hw_register_fixed_rate(struct device *dev, const char *name,
  const char *parent_name, unsigned long flags,
  unsigned long fixed_rate)
{
 return clk_hw_register_fixed_rate_with_accuracy(dev, name, parent_name,
           flags, fixed_rate, 0);
}
