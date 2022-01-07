
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union device_attr_group_devres {struct attribute_group const* group; } ;
struct device {int kobj; } ;
struct attribute_group {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_attr_group_remove ;
 int devres_add (struct device*,union device_attr_group_devres*) ;
 union device_attr_group_devres* devres_alloc (int ,int,int ) ;
 int devres_free (union device_attr_group_devres*) ;
 int sysfs_create_group (int *,struct attribute_group const*) ;

int devm_device_add_group(struct device *dev, const struct attribute_group *grp)
{
 union device_attr_group_devres *devres;
 int error;

 devres = devres_alloc(devm_attr_group_remove,
         sizeof(*devres), GFP_KERNEL);
 if (!devres)
  return -ENOMEM;

 error = sysfs_create_group(&dev->kobj, grp);
 if (error) {
  devres_free(devres);
  return error;
 }

 devres->group = grp;
 devres_add(dev, devres);
 return 0;
}
