
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int is_noirq_suspended; int is_late_suspended; int is_suspended; int completion; scalar_t__ direct_complete; scalar_t__ syscore; } ;
struct device {TYPE_2__ power; TYPE_1__* driver; } ;
struct TYPE_14__ {scalar_t__ event; } ;
typedef TYPE_3__ pm_message_t ;
typedef scalar_t__ pm_callback_t ;
struct TYPE_12__ {scalar_t__ pm; } ;


 scalar_t__ PM_EVENT_THAW ;
 int TRACE_DEVICE (struct device*) ;
 int TRACE_RESUME (int) ;
 int complete_all (int *) ;
 int dev_pm_may_skip_resume (struct device*) ;
 scalar_t__ dev_pm_smart_suspend_and_suspended (struct device*) ;
 int dpm_run_callback (scalar_t__,struct device*,TYPE_3__,char const*) ;
 scalar_t__ dpm_subsys_resume_noirq_cb (struct device*,TYPE_3__,char const**) ;
 int dpm_subsys_suspend_late_cb (struct device*,TYPE_3__,int *) ;
 int dpm_subsys_suspend_noirq_cb (struct device*,TYPE_3__,int *) ;
 int dpm_wait_for_superior (struct device*,int) ;
 scalar_t__ pm_noirq_op (scalar_t__,TYPE_3__) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_suspended (struct device*) ;
 TYPE_3__ suspend_event (TYPE_3__) ;

__attribute__((used)) static int device_resume_noirq(struct device *dev, pm_message_t state, bool async)
{
 pm_callback_t callback;
 const char *info;
 bool skip_resume;
 int error = 0;

 TRACE_DEVICE(dev);
 TRACE_RESUME(0);

 if (dev->power.syscore || dev->power.direct_complete)
  goto Out;

 if (!dev->power.is_noirq_suspended)
  goto Out;

 dpm_wait_for_superior(dev, async);

 skip_resume = dev_pm_may_skip_resume(dev);

 callback = dpm_subsys_resume_noirq_cb(dev, state, &info);
 if (callback)
  goto Run;

 if (skip_resume)
  goto Skip;

 if (dev_pm_smart_suspend_and_suspended(dev)) {
  pm_message_t suspend_msg = suspend_event(state);
  if (!dpm_subsys_suspend_late_cb(dev, suspend_msg, ((void*)0)) &&
      !dpm_subsys_suspend_noirq_cb(dev, suspend_msg, ((void*)0))) {
   if (state.event == PM_EVENT_THAW) {
    skip_resume = 1;
    goto Skip;
   } else {
    pm_runtime_set_active(dev);
   }
  }
 }

 if (dev->driver && dev->driver->pm) {
  info = "noirq driver ";
  callback = pm_noirq_op(dev->driver->pm, state);
 }

Run:
 error = dpm_run_callback(callback, dev, state, info);

Skip:
 dev->power.is_noirq_suspended = 0;

 if (skip_resume) {

  dev->power.is_late_suspended = 0;
  dev->power.is_suspended = 0;







  pm_runtime_set_suspended(dev);
 }

Out:
 complete_all(&dev->power.completion);
 TRACE_RESUME(error);
 return error;
}
