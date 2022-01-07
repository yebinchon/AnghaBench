
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


 int TRACE_DEVICE (struct device*) ;
 int TRACE_RESUME (int) ;
 int complete_all (int *) ;
 int dpm_run_callback (scalar_t__,struct device*,int ,char const*) ;
 scalar_t__ dpm_subsys_resume_early_cb (struct device*,int ,char const**) ;
 int dpm_wait_for_superior (struct device*,int) ;
 scalar_t__ pm_late_early_op (scalar_t__,int ) ;
 int pm_runtime_enable (struct device*) ;

__attribute__((used)) static int device_resume_early(struct device *dev, pm_message_t state, bool async)
{
 pm_callback_t callback;
 const char *info;
 int error = 0;

 TRACE_DEVICE(dev);
 TRACE_RESUME(0);

 if (dev->power.syscore || dev->power.direct_complete)
  goto Out;

 if (!dev->power.is_late_suspended)
  goto Out;

 dpm_wait_for_superior(dev, async);

 callback = dpm_subsys_resume_early_cb(dev, state, &info);

 if (!callback && dev->driver && dev->driver->pm) {
  info = "early driver ";
  callback = pm_late_early_op(dev->driver->pm, state);
 }

 error = dpm_run_callback(callback, dev, state, info);
 dev->power.is_late_suspended = 0;

 Out:
 TRACE_RESUME(error);

 pm_runtime_enable(dev);
 complete_all(&dev->power.completion);
 return error;
}
