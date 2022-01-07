
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int function; } ;
struct TYPE_3__ {int idle_notification; int disable_depth; int runtime_auto; int request_pending; int deferred_resume; int wait_queue; TYPE_2__ suspend_timer; scalar_t__ timer_expires; int work; int request; int child_count; scalar_t__ runtime_error; int usage_count; int runtime_status; } ;
struct device {TYPE_1__ power; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_ABS ;
 int INIT_WORK (int *,int ) ;
 int RPM_REQ_NONE ;
 int RPM_SUSPENDED ;
 int atomic_set (int *,int ) ;
 int hrtimer_init (TYPE_2__*,int ,int ) ;
 int init_waitqueue_head (int *) ;
 int pm_runtime_work ;
 int pm_suspend_ignore_children (struct device*,int) ;
 int pm_suspend_timer_fn ;

void pm_runtime_init(struct device *dev)
{
 dev->power.runtime_status = RPM_SUSPENDED;
 dev->power.idle_notification = 0;

 dev->power.disable_depth = 1;
 atomic_set(&dev->power.usage_count, 0);

 dev->power.runtime_error = 0;

 atomic_set(&dev->power.child_count, 0);
 pm_suspend_ignore_children(dev, 0);
 dev->power.runtime_auto = 1;

 dev->power.request_pending = 0;
 dev->power.request = RPM_REQ_NONE;
 dev->power.deferred_resume = 0;
 INIT_WORK(&dev->power.work, pm_runtime_work);

 dev->power.timer_expires = 0;
 hrtimer_init(&dev->power.suspend_timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
 dev->power.suspend_timer.function = pm_suspend_timer_fn;

 init_waitqueue_head(&dev->power.wait_queue);
}
