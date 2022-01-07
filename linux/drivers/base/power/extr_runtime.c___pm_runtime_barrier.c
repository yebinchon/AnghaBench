
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int request_pending; scalar_t__ runtime_status; int wait_queue; int lock; scalar_t__ idle_notification; int work; int request; } ;
struct device {TYPE_1__ power; } ;


 int DEFINE_WAIT (int ) ;
 int RPM_REQ_NONE ;
 scalar_t__ RPM_RESUMING ;
 scalar_t__ RPM_SUSPENDING ;
 int TASK_UNINTERRUPTIBLE ;
 int cancel_work_sync (int *) ;
 int finish_wait (int *,int *) ;
 int pm_runtime_deactivate_timer (struct device*) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait ;

__attribute__((used)) static void __pm_runtime_barrier(struct device *dev)
{
 pm_runtime_deactivate_timer(dev);

 if (dev->power.request_pending) {
  dev->power.request = RPM_REQ_NONE;
  spin_unlock_irq(&dev->power.lock);

  cancel_work_sync(&dev->power.work);

  spin_lock_irq(&dev->power.lock);
  dev->power.request_pending = 0;
 }

 if (dev->power.runtime_status == RPM_SUSPENDING
     || dev->power.runtime_status == RPM_RESUMING
     || dev->power.idle_notification) {
  DEFINE_WAIT(wait);


  for (;;) {
   prepare_to_wait(&dev->power.wait_queue, &wait,
     TASK_UNINTERRUPTIBLE);
   if (dev->power.runtime_status != RPM_SUSPENDING
       && dev->power.runtime_status != RPM_RESUMING
       && !dev->power.idle_notification)
    break;
   spin_unlock_irq(&dev->power.lock);

   schedule();

   spin_lock_irq(&dev->power.lock);
  }
  finish_wait(&dev->power.wait_queue, &wait);
 }
}
