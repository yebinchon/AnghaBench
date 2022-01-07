
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int memalloc_noio; int lock; } ;
struct device {struct device* parent; TYPE_1__ power; } ;
typedef int DEFINE_MUTEX ;


 int dev_memalloc_noio ;
 scalar_t__ device_for_each_child (struct device*,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void pm_runtime_set_memalloc_noio(struct device *dev, bool enable)
{
 static DEFINE_MUTEX(dev_hotplug_mutex);

 mutex_lock(&dev_hotplug_mutex);
 for (;;) {
  bool enabled;


  spin_lock_irq(&dev->power.lock);
  enabled = dev->power.memalloc_noio;
  dev->power.memalloc_noio = enable;
  spin_unlock_irq(&dev->power.lock);





  if (enabled && enable)
   break;

  dev = dev->parent;






  if (!dev || (!enable &&
        device_for_each_child(dev, ((void*)0),
         dev_memalloc_noio)))
   break;
 }
 mutex_unlock(&dev_hotplug_mutex);
}
