
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct deferred_device {int node; struct resource* parent; struct amba_device* dev; } ;
struct amba_device {int dummy; } ;


 int DEFERRED_DEVICE_TIMEOUT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int amba_device_try_add (struct amba_device*,struct resource*) ;
 int deferred_devices ;
 int deferred_devices_lock ;
 int deferred_retry_work ;
 struct deferred_device* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int ) ;

int amba_device_add(struct amba_device *dev, struct resource *parent)
{
 int ret = amba_device_try_add(dev, parent);

 if (ret == -EPROBE_DEFER) {
  struct deferred_device *ddev;

  ddev = kmalloc(sizeof(*ddev), GFP_KERNEL);
  if (!ddev)
   return -ENOMEM;

  ddev->dev = dev;
  ddev->parent = parent;
  ret = 0;

  mutex_lock(&deferred_devices_lock);

  if (list_empty(&deferred_devices))
   schedule_delayed_work(&deferred_retry_work,
           DEFERRED_DEVICE_TIMEOUT);
  list_add_tail(&ddev->node, &deferred_devices);

  mutex_unlock(&deferred_devices_lock);
 }
 return ret;
}
