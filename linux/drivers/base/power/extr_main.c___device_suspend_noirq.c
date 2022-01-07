
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int is_noirq_suspended; int must_resume; int completion; int usage_count; scalar_t__ direct_complete; scalar_t__ syscore; } ;
struct device {TYPE_2__ power; TYPE_1__* driver; } ;
typedef int pm_message_t ;
typedef scalar_t__ pm_callback_t ;
struct TYPE_3__ {scalar_t__ pm; } ;


 int DPM_FLAG_LEAVE_SUSPENDED ;
 int TRACE_DEVICE (struct device*) ;
 int TRACE_SUSPEND (int) ;
 int async_error ;
 int atomic_read (int *) ;
 int complete_all (int *) ;
 scalar_t__ dev_pm_smart_suspend_and_suspended (struct device*) ;
 scalar_t__ dev_pm_test_driver_flags (struct device*,int ) ;
 scalar_t__ device_must_resume (struct device*,int ,int) ;
 int dpm_run_callback (scalar_t__,struct device*,int ,char const*) ;
 int dpm_subsys_suspend_late_cb (struct device*,int ,int *) ;
 scalar_t__ dpm_subsys_suspend_noirq_cb (struct device*,int ,char const**) ;
 int dpm_superior_set_must_resume (struct device*) ;
 int dpm_wait_for_subordinate (struct device*,int) ;
 scalar_t__ pm_noirq_op (scalar_t__,int ) ;

__attribute__((used)) static int __device_suspend_noirq(struct device *dev, pm_message_t state, bool async)
{
 pm_callback_t callback;
 const char *info;
 bool no_subsys_cb = 0;
 int error = 0;

 TRACE_DEVICE(dev);
 TRACE_SUSPEND(0);

 dpm_wait_for_subordinate(dev, async);

 if (async_error)
  goto Complete;

 if (dev->power.syscore || dev->power.direct_complete)
  goto Complete;

 callback = dpm_subsys_suspend_noirq_cb(dev, state, &info);
 if (callback)
  goto Run;

 no_subsys_cb = !dpm_subsys_suspend_late_cb(dev, state, ((void*)0));

 if (dev_pm_smart_suspend_and_suspended(dev) && no_subsys_cb)
  goto Skip;

 if (dev->driver && dev->driver->pm) {
  info = "noirq driver ";
  callback = pm_noirq_op(dev->driver->pm, state);
 }

Run:
 error = dpm_run_callback(callback, dev, state, info);
 if (error) {
  async_error = error;
  goto Complete;
 }

Skip:
 dev->power.is_noirq_suspended = 1;

 if (dev_pm_test_driver_flags(dev, DPM_FLAG_LEAVE_SUSPENDED)) {
  dev->power.must_resume = dev->power.must_resume ||
    atomic_read(&dev->power.usage_count) > 1 ||
    device_must_resume(dev, state, no_subsys_cb);
 } else {
  dev->power.must_resume = 1;
 }

 if (dev->power.must_resume)
  dpm_superior_set_must_resume(dev);

Complete:
 complete_all(&dev->power.completion);
 TRACE_SUSPEND(error);
 return error;
}
