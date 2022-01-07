
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_type {int groups; } ;
struct device {int groups; int offline_disabled; struct device_type* type; struct class* class; } ;
struct class {int dev_groups; } ;


 int dev_attr_online ;
 int device_add_groups (struct device*,int ) ;
 int device_create_file (struct device*,int *) ;
 int device_remove_groups (struct device*,int ) ;
 scalar_t__ device_supports_offline (struct device*) ;

__attribute__((used)) static int device_add_attrs(struct device *dev)
{
 struct class *class = dev->class;
 const struct device_type *type = dev->type;
 int error;

 if (class) {
  error = device_add_groups(dev, class->dev_groups);
  if (error)
   return error;
 }

 if (type) {
  error = device_add_groups(dev, type->groups);
  if (error)
   goto err_remove_class_groups;
 }

 error = device_add_groups(dev, dev->groups);
 if (error)
  goto err_remove_type_groups;

 if (device_supports_offline(dev) && !dev->offline_disabled) {
  error = device_create_file(dev, &dev_attr_online);
  if (error)
   goto err_remove_dev_groups;
 }

 return 0;

 err_remove_dev_groups:
 device_remove_groups(dev, dev->groups);
 err_remove_type_groups:
 if (type)
  device_remove_groups(dev, type->groups);
 err_remove_class_groups:
 if (class)
  device_remove_groups(dev, class->dev_groups);

 return error;
}
