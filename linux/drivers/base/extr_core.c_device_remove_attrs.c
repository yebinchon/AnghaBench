
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_type {int groups; } ;
struct device {int groups; struct device_type* type; struct class* class; } ;
struct class {int dev_groups; } ;


 int dev_attr_online ;
 int device_remove_file (struct device*,int *) ;
 int device_remove_groups (struct device*,int ) ;

__attribute__((used)) static void device_remove_attrs(struct device *dev)
{
 struct class *class = dev->class;
 const struct device_type *type = dev->type;

 device_remove_file(dev, &dev_attr_online);
 device_remove_groups(dev, dev->groups);

 if (type)
  device_remove_groups(dev, type->groups);

 if (class)
  device_remove_groups(dev, class->dev_groups);
}
