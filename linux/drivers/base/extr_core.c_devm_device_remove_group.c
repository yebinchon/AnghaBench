
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct attribute_group {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_attr_group_match ;
 int devm_attr_group_remove ;
 int devres_release (struct device*,int ,int ,void*) ;

void devm_device_remove_group(struct device *dev,
         const struct attribute_group *grp)
{
 WARN_ON(devres_release(dev, devm_attr_group_remove,
          devm_attr_group_match,
                                (void *)grp));
}
