
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_2__ {struct kobject* parent; } ;
struct device {int release; struct attribute_group const** groups; TYPE_1__ kobj; } ;
struct bus_type {struct device* dev_root; int name; } ;
struct attribute_group {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int bus_register (struct bus_type*) ;
 int bus_unregister (struct bus_type*) ;
 int dev_set_name (struct device*,char*,int ) ;
 int device_register (struct device*) ;
 int kfree (struct device*) ;
 struct device* kzalloc (int,int ) ;
 int put_device (struct device*) ;
 int system_root_device_release ;

__attribute__((used)) static int subsys_register(struct bus_type *subsys,
      const struct attribute_group **groups,
      struct kobject *parent_of_root)
{
 struct device *dev;
 int err;

 err = bus_register(subsys);
 if (err < 0)
  return err;

 dev = kzalloc(sizeof(struct device), GFP_KERNEL);
 if (!dev) {
  err = -ENOMEM;
  goto err_dev;
 }

 err = dev_set_name(dev, "%s", subsys->name);
 if (err < 0)
  goto err_name;

 dev->kobj.parent = parent_of_root;
 dev->groups = groups;
 dev->release = system_root_device_release;

 err = device_register(dev);
 if (err < 0)
  goto err_dev_reg;

 subsys->dev_root = dev;
 return 0;

err_dev_reg:
 put_device(dev);
 dev = ((void*)0);
err_name:
 kfree(dev);
err_dev:
 bus_unregister(subsys);
 return err;
}
