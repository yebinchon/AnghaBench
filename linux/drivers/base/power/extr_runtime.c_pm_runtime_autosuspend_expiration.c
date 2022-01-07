
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int last_busy; int autosuspend_delay; int use_autosuspend; } ;
struct device {TYPE_1__ power; } ;


 int NSEC_PER_MSEC ;
 void* READ_ONCE (int ) ;
 int ktime_get_mono_fast_ns () ;

u64 pm_runtime_autosuspend_expiration(struct device *dev)
{
 int autosuspend_delay;
 u64 expires;

 if (!dev->power.use_autosuspend)
  return 0;

 autosuspend_delay = READ_ONCE(dev->power.autosuspend_delay);
 if (autosuspend_delay < 0)
  return 0;

 expires = READ_ONCE(dev->power.last_busy);
 expires += (u64)autosuspend_delay * NSEC_PER_MSEC;
 if (expires > ktime_get_mono_fast_ns())
  return expires;

 return 0;
}
