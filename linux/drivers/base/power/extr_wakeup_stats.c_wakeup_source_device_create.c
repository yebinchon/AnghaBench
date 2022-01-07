
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int id; } ;
struct device {int kobj; int release; int groups; struct device* parent; int class; int devt; } ;


 int ENODEV ;
 int ENOMEM ;
 struct device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MKDEV (int ,int ) ;
 int dev_set_drvdata (struct device*,struct wakeup_source*) ;
 int device_add (struct device*) ;
 int device_create_release ;
 int device_initialize (struct device*) ;
 int device_set_pm_not_required (struct device*) ;
 int kobject_set_name (int *,char*,int ) ;
 struct device* kzalloc (int,int ) ;
 int put_device (struct device*) ;
 int wakeup_class ;
 int wakeup_source_groups ;

__attribute__((used)) static struct device *wakeup_source_device_create(struct device *parent,
        struct wakeup_source *ws)
{
 struct device *dev = ((void*)0);
 int retval = -ENODEV;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  retval = -ENOMEM;
  goto error;
 }

 device_initialize(dev);
 dev->devt = MKDEV(0, 0);
 dev->class = wakeup_class;
 dev->parent = parent;
 dev->groups = wakeup_source_groups;
 dev->release = device_create_release;
 dev_set_drvdata(dev, ws);
 device_set_pm_not_required(dev);

 retval = kobject_set_name(&dev->kobj, "wakeup%d", ws->id);
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
