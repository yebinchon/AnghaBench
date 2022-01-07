
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int autosuspend_delay; int usage_count; scalar_t__ use_autosuspend; } ;
struct device {TYPE_1__ power; } ;


 int RPM_AUTO ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int rpm_idle (struct device*,int ) ;
 int rpm_resume (struct device*,int ) ;

__attribute__((used)) static void update_autosuspend(struct device *dev, int old_delay, int old_use)
{
 int delay = dev->power.autosuspend_delay;


 if (dev->power.use_autosuspend && delay < 0) {


  if (!old_use || old_delay >= 0) {
   atomic_inc(&dev->power.usage_count);
   rpm_resume(dev, 0);
  }
 }


 else {


  if (old_use && old_delay < 0)
   atomic_dec(&dev->power.usage_count);


  rpm_idle(dev, RPM_AUTO);
 }
}
