
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_hw {int dummy; } ;


 struct clk_hw* __clk_hw_register_fixed_factor (struct device*,int *,char const*,char const*,int,unsigned long,unsigned int,unsigned int) ;

struct clk_hw *clk_hw_register_fixed_factor(struct device *dev,
  const char *name, const char *parent_name, unsigned long flags,
  unsigned int mult, unsigned int div)
{
 return __clk_hw_register_fixed_factor(dev, ((void*)0), name, parent_name, -1,
           flags, mult, div);
}
