
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct device {int kobj; int release; struct attribute_group const** groups; struct device* parent; } ;
struct attribute_group {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 struct device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_set_drvdata (struct device*,void*) ;
 int device_add (struct device*) ;
 int device_create_release ;
 int device_initialize (struct device*) ;
 int device_set_pm_not_required (struct device*) ;
 int kobject_set_name_vargs (int *,char const*,int ) ;
 struct device* kzalloc (int,int ) ;
 int put_device (struct device*) ;

__attribute__((used)) static struct device *
__cpu_device_create(struct device *parent, void *drvdata,
      const struct attribute_group **groups,
      const char *fmt, va_list args)
{
 struct device *dev = ((void*)0);
 int retval = -ENODEV;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  retval = -ENOMEM;
  goto error;
 }

 device_initialize(dev);
 dev->parent = parent;
 dev->groups = groups;
 dev->release = device_create_release;
 device_set_pm_not_required(dev);
 dev_set_drvdata(dev, drvdata);

 retval = kobject_set_name_vargs(&dev->kobj, fmt, args);
 if (retval)
  goto error;

 retval = device_add(dev);
 if (retval)
  goto error;

 return dev;

error:
 put_device(dev);
 return ERR_PTR(retval);
}
