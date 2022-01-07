
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


struct TYPE_12__ {int is_prepared; int is_suspended; int completion; scalar_t__ direct_complete; scalar_t__ syscore; } ;
struct device {TYPE_6__ power; TYPE_5__* driver; TYPE_4__* bus; TYPE_3__* class; TYPE_2__* type; TYPE_1__* pm_domain; } ;
typedef int pm_message_t ;
typedef int * pm_callback_t ;
struct TYPE_11__ {int * pm; } ;
struct TYPE_10__ {int * resume; int * pm; } ;
struct TYPE_9__ {int * pm; } ;
struct TYPE_8__ {int * pm; } ;
struct TYPE_7__ {int ops; } ;


 int DECLARE_DPM_WATCHDOG_ON_STACK (int ) ;
 int TRACE_DEVICE (struct device*) ;
 int TRACE_RESUME (int) ;
 int complete_all (int *) ;
 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int dpm_run_callback (int *,struct device*,int ,char const*) ;
 int dpm_wait_for_superior (struct device*,int) ;
 int dpm_watchdog_clear (int *) ;
 int dpm_watchdog_set (int *,struct device*) ;
 int * pm_op (int *,int ) ;
 int pm_runtime_enable (struct device*) ;
 int wd ;

__attribute__((used)) static int device_resume(struct device *dev, pm_message_t state, bool async)
{
 pm_callback_t callback = ((void*)0);
 const char *info = ((void*)0);
 int error = 0;
 DECLARE_DPM_WATCHDOG_ON_STACK(wd);

 TRACE_DEVICE(dev);
 TRACE_RESUME(0);

 if (dev->power.syscore)
  goto Complete;

 if (dev->power.direct_complete) {

  pm_runtime_enable(dev);
  goto Complete;
 }

 dpm_wait_for_superior(dev, async);
 dpm_watchdog_set(&wd, dev);
 device_lock(dev);





 dev->power.is_prepared = 0;

 if (!dev->power.is_suspended)
  goto Unlock;

 if (dev->pm_domain) {
  info = "power domain ";
  callback = pm_op(&dev->pm_domain->ops, state);
  goto Driver;
 }

 if (dev->type && dev->type->pm) {
  info = "type ";
  callback = pm_op(dev->type->pm, state);
  goto Driver;
 }

 if (dev->class && dev->class->pm) {
  info = "class ";
  callback = pm_op(dev->class->pm, state);
  goto Driver;
 }

 if (dev->bus) {
  if (dev->bus->pm) {
   info = "bus ";
   callback = pm_op(dev->bus->pm, state);
  } else if (dev->bus->resume) {
   info = "legacy bus ";
   callback = dev->bus->resume;
   goto End;
  }
 }

 Driver:
 if (!callback && dev->driver && dev->driver->pm) {
  info = "driver ";
  callback = pm_op(dev->driver->pm, state);
 }

 End:
 error = dpm_run_callback(callback, dev, state, info);
 dev->power.is_suspended = 0;

 Unlock:
 device_unlock(dev);
 dpm_watchdog_clear(&wd);

 Complete:
 complete_all(&dev->power.completion);

 TRACE_RESUME(error);

 return error;
}
