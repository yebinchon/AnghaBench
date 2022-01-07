
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct component_ops {int dummy; } ;


 int __component_add (struct device*,struct component_ops const*,int ) ;

int component_add(struct device *dev, const struct component_ops *ops)
{
 return __component_add(dev, ops, 0);
}
