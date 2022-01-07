
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wakeup_source {int dummy; } ;
struct TYPE_2__ {int can_wakeup; } ;
struct device {TYPE_1__ power; } ;


 int EINVAL ;
 struct wakeup_source* device_wakeup_detach (struct device*) ;
 int wakeup_source_unregister (struct wakeup_source*) ;

int device_wakeup_disable(struct device *dev)
{
 struct wakeup_source *ws;

 if (!dev || !dev->power.can_wakeup)
  return -EINVAL;

 ws = device_wakeup_detach(dev);
 wakeup_source_unregister(ws);
 return 0;
}
