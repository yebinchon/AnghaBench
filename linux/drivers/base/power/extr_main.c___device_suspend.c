
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int direct_complete; int wakeup_path; int may_skip_resume; int must_resume; int is_suspended; int completion; scalar_t__ syscore; } ;
struct device {TYPE_6__ power; TYPE_5__* driver; TYPE_4__* bus; TYPE_3__* class; TYPE_2__* type; TYPE_1__* pm_domain; } ;
typedef int pm_message_t ;
typedef int * pm_callback_t ;
struct TYPE_11__ {int * pm; } ;
struct TYPE_10__ {scalar_t__ suspend; int * pm; } ;
struct TYPE_9__ {int * pm; } ;
struct TYPE_8__ {int * pm; } ;
struct TYPE_7__ {int ops; } ;


 int DECLARE_DPM_WATCHDOG_ON_STACK (int ) ;
 int EBUSY ;
 int TRACE_DEVICE (struct device*) ;
 int TRACE_SUSPEND (int) ;
 int async_error ;
 int complete_all (int *) ;
 int device_lock (struct device*) ;
 scalar_t__ device_may_wakeup (struct device*) ;
 int device_unlock (struct device*) ;
 int dpm_clear_superiors_direct_complete (struct device*) ;
 int dpm_propagate_wakeup_to_parent (struct device*) ;
 int dpm_run_callback (int *,struct device*,int ,char const*) ;
 int dpm_wait_for_subordinate (struct device*,int) ;
 int dpm_watchdog_clear (int *) ;
 int dpm_watchdog_set (int *,struct device*) ;
 int legacy_suspend (struct device*,int ,scalar_t__,char*) ;
 int pm_dev_dbg (struct device*,int ,char*) ;
 int * pm_op (int *,int ) ;
 scalar_t__ pm_runtime_barrier (struct device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 scalar_t__ pm_runtime_status_suspended (struct device*) ;
 int pm_wakeup_event (struct device*,int ) ;
 scalar_t__ pm_wakeup_pending () ;
 int wd ;

__attribute__((used)) static int __device_suspend(struct device *dev, pm_message_t state, bool async)
{
 pm_callback_t callback = ((void*)0);
 const char *info = ((void*)0);
 int error = 0;
 DECLARE_DPM_WATCHDOG_ON_STACK(wd);

 TRACE_DEVICE(dev);
 TRACE_SUSPEND(0);

 dpm_wait_for_subordinate(dev, async);

 if (async_error) {
  dev->power.direct_complete = 0;
  goto Complete;
 }







 if (pm_runtime_barrier(dev) && device_may_wakeup(dev))
  pm_wakeup_event(dev, 0);

 if (pm_wakeup_pending()) {
  dev->power.direct_complete = 0;
  async_error = -EBUSY;
  goto Complete;
 }

 if (dev->power.syscore)
  goto Complete;


 if (device_may_wakeup(dev) || dev->power.wakeup_path)
  dev->power.direct_complete = 0;

 if (dev->power.direct_complete) {
  if (pm_runtime_status_suspended(dev)) {
   pm_runtime_disable(dev);
   if (pm_runtime_status_suspended(dev)) {
    pm_dev_dbg(dev, state, "direct-complete ");
    goto Complete;
   }

   pm_runtime_enable(dev);
  }
  dev->power.direct_complete = 0;
 }

 dev->power.may_skip_resume = 0;
 dev->power.must_resume = 0;

 dpm_watchdog_set(&wd, dev);
 device_lock(dev);

 if (dev->pm_domain) {
  info = "power domain ";
  callback = pm_op(&dev->pm_domain->ops, state);
  goto Run;
 }

 if (dev->type && dev->type->pm) {
  info = "type ";
  callback = pm_op(dev->type->pm, state);
  goto Run;
 }

 if (dev->class && dev->class->pm) {
  info = "class ";
  callback = pm_op(dev->class->pm, state);
  goto Run;
 }

 if (dev->bus) {
  if (dev->bus->pm) {
   info = "bus ";
   callback = pm_op(dev->bus->pm, state);
  } else if (dev->bus->suspend) {
   pm_dev_dbg(dev, state, "legacy bus ");
   error = legacy_suspend(dev, state, dev->bus->suspend,
      "legacy bus ");
   goto End;
  }
 }

 Run:
 if (!callback && dev->driver && dev->driver->pm) {
  info = "driver ";
  callback = pm_op(dev->driver->pm, state);
 }

 error = dpm_run_callback(callback, dev, state, info);

 End:
 if (!error) {
  dev->power.is_suspended = 1;
  if (device_may_wakeup(dev))
   dev->power.wakeup_path = 1;

  dpm_propagate_wakeup_to_parent(dev);
  dpm_clear_superiors_direct_complete(dev);
 }

 device_unlock(dev);
 dpm_watchdog_clear(&wd);

 Complete:
 if (error)
  async_error = error;

 complete_all(&dev->power.completion);
 TRACE_SUSPEND(error);
 return error;
}
