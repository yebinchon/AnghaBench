
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct device {TYPE_3__* class; struct kobject kobj; } ;
struct TYPE_6__ {TYPE_2__* p; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_5__ {TYPE_1__ subsys; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (struct device*,char*,char const*) ;
 int dev_name (struct device*) ;
 struct device* get_device (struct device*) ;
 int kfree (char*) ;
 int kobject_namespace (struct kobject*) ;
 int kobject_rename (struct kobject*,char const*) ;
 char* kstrdup (int ,int ) ;
 int put_device (struct device*) ;
 int sysfs_rename_link_ns (int *,struct kobject*,char*,char const*,int ) ;

int device_rename(struct device *dev, const char *new_name)
{
 struct kobject *kobj = &dev->kobj;
 char *old_device_name = ((void*)0);
 int error;

 dev = get_device(dev);
 if (!dev)
  return -EINVAL;

 dev_dbg(dev, "renaming to %s\n", new_name);

 old_device_name = kstrdup(dev_name(dev), GFP_KERNEL);
 if (!old_device_name) {
  error = -ENOMEM;
  goto out;
 }

 if (dev->class) {
  error = sysfs_rename_link_ns(&dev->class->p->subsys.kobj,
          kobj, old_device_name,
          new_name, kobject_namespace(kobj));
  if (error)
   goto out;
 }

 error = kobject_rename(kobj, new_name);
 if (error)
  goto out;

out:
 put_device(dev);

 kfree(old_device_name);

 return error;
}
