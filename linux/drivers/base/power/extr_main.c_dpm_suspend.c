
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int prev; } ;
struct TYPE_11__ {TYPE_6__ entry; } ;
struct device {TYPE_1__ power; } ;
struct TYPE_12__ {int event; } ;
typedef TYPE_2__ pm_message_t ;
typedef int ktime_t ;
struct TYPE_13__ {int failed_suspend; } ;


 int SUSPEND_SUSPEND ;
 int TPS (char*) ;
 int async_error ;
 int async_synchronize_full () ;
 int cpufreq_suspend () ;
 int dev_name (struct device*) ;
 int devfreq_suspend () ;
 int device_suspend (struct device*) ;
 int dpm_list_mtx ;
 TYPE_6__ dpm_prepared_list ;
 int dpm_save_failed_dev (int ) ;
 int dpm_save_failed_step (int ) ;
 int dpm_show_time (int ,TYPE_2__,int,int *) ;
 int dpm_suspended_list ;
 int get_device (struct device*) ;
 int ktime_get () ;
 int list_empty (TYPE_6__*) ;
 int list_move (TYPE_6__*,int *) ;
 int might_sleep () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_dev_err (struct device*,TYPE_2__,char*,int) ;
 TYPE_2__ pm_transition ;
 int put_device (struct device*) ;
 TYPE_3__ suspend_stats ;
 struct device* to_device (int ) ;
 int trace_suspend_resume (int ,int ,int) ;

int dpm_suspend(pm_message_t state)
{
 ktime_t starttime = ktime_get();
 int error = 0;

 trace_suspend_resume(TPS("dpm_suspend"), state.event, 1);
 might_sleep();

 devfreq_suspend();
 cpufreq_suspend();

 mutex_lock(&dpm_list_mtx);
 pm_transition = state;
 async_error = 0;
 while (!list_empty(&dpm_prepared_list)) {
  struct device *dev = to_device(dpm_prepared_list.prev);

  get_device(dev);
  mutex_unlock(&dpm_list_mtx);

  error = device_suspend(dev);

  mutex_lock(&dpm_list_mtx);
  if (error) {
   pm_dev_err(dev, state, "", error);
   dpm_save_failed_dev(dev_name(dev));
   put_device(dev);
   break;
  }
  if (!list_empty(&dev->power.entry))
   list_move(&dev->power.entry, &dpm_suspended_list);
  put_device(dev);
  if (async_error)
   break;
 }
 mutex_unlock(&dpm_list_mtx);
 async_synchronize_full();
 if (!error)
  error = async_error;
 if (error) {
  suspend_stats.failed_suspend++;
  dpm_save_failed_step(SUSPEND_SUSPEND);
 }
 dpm_show_time(starttime, state, error, ((void*)0));
 trace_suspend_resume(TPS("dpm_suspend"), state.event, 0);
 return error;
}
