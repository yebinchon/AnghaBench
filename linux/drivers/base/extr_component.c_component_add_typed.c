
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct component_ops {int dummy; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int __component_add (struct device*,struct component_ops const*,int) ;

int component_add_typed(struct device *dev, const struct component_ops *ops,
 int subcomponent)
{
 if (WARN_ON(subcomponent == 0))
  return -EINVAL;

 return __component_add(dev, ops, subcomponent);
}
