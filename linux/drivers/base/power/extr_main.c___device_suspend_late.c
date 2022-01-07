
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int is_late_suspended; int completion; scalar_t__ direct_complete; scalar_t__ syscore; } ;
struct device {TYPE_2__ power; TYPE_1__* driver; } ;
typedef int pm_message_t ;
typedef scalar_t__ pm_callback_t ;
struct TYPE_3__ {scalar_t__ pm; } ;


 int EBUSY ;
 int TRACE_DEVICE (struct device*) ;
 int TRACE_SUSPEND (int) ;
 int __pm_runtime_disable (struct device*,int) ;
 int async_error ;
 int complete_all (int *) ;
 scalar_t__ dev_pm_smart_suspend_and_suspended (struct device*) ;
 int dpm_propagate_wakeup_to_parent (struct device*) ;
 int dpm_run_callback (scalar_t__,struct device*,int ,char const*) ;
 scalar_t__ dpm_subsys_suspend_late_cb (struct device*,int ,char const**) ;
 int dpm_subsys_suspend_noirq_cb (struct device*,int ,int *) ;
 int dpm_wait_for_subordinate (struct device*,int) ;
 scalar_t__ pm_late_early_op (scalar_t__,int ) ;
 scalar_t__ pm_wakeup_pending () ;

__attribute__((used)) static int __device_suspend_late(struct device *dev, pm_message_t state, bool async)
{
 pm_callback_t callback;
 const char *info;
 int error = 0;

 TRACE_DEVICE(dev);
 TRACE_SUSPEND(0);

 __pm_runtime_disable(dev, 0);

 dpm_wait_for_subordinate(dev, async);

 if (async_error)
  goto Complete;

 if (pm_wakeup_pending()) {
  async_error = -EBUSY;
  goto Complete;
 }

 if (dev->power.syscore || dev->power.direct_complete)
  goto Complete;

 callback = dpm_subsys_suspend_late_cb(dev, state, &info);
 if (callback)
  goto Run;

 if (dev_pm_smart_suspend_and_suspended(dev) &&
     !dpm_subsys_suspend_noirq_cb(dev, state, ((void*)0)))
  goto Skip;

 if (dev->driver && dev->driver->pm) {
  info = "late driver ";
  callback = pm_late_early_op(dev->driver->pm, state);
 }

Run:
 error = dpm_run_callback(callback, dev, state, info);
 if (error) {
  async_error = error;
  goto Complete;
 }
 dpm_propagate_wakeup_to_parent(dev);

Skip:
 dev->power.is_late_suspended = 1;

Complete:
 TRACE_SUSPEND(error);
 complete_all(&dev->power.completion);
 return error;
}
