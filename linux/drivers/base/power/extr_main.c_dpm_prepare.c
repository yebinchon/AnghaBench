
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int next; } ;
struct TYPE_8__ {int is_prepared; TYPE_3__ entry; } ;
struct device {TYPE_1__ power; } ;
struct TYPE_9__ {int event; } ;
typedef TYPE_2__ pm_message_t ;


 int EAGAIN ;
 int TPS (char*) ;
 int dev_name (struct device*) ;
 int device_block_probing () ;
 int device_prepare (struct device*,TYPE_2__) ;
 TYPE_3__ dpm_list ;
 int dpm_list_mtx ;
 int dpm_prepared_list ;
 int get_device (struct device*) ;
 int list_empty (TYPE_3__*) ;
 int list_move_tail (TYPE_3__*,int *) ;
 int might_sleep () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,int ,int) ;
 int put_device (struct device*) ;
 struct device* to_device (int ) ;
 int trace_device_pm_callback_end (struct device*,int) ;
 int trace_device_pm_callback_start (struct device*,char*,int ) ;
 int trace_suspend_resume (int ,int ,int) ;
 int wait_for_device_probe () ;

int dpm_prepare(pm_message_t state)
{
 int error = 0;

 trace_suspend_resume(TPS("dpm_prepare"), state.event, 1);
 might_sleep();






 wait_for_device_probe();






 device_block_probing();

 mutex_lock(&dpm_list_mtx);
 while (!list_empty(&dpm_list)) {
  struct device *dev = to_device(dpm_list.next);

  get_device(dev);
  mutex_unlock(&dpm_list_mtx);

  trace_device_pm_callback_start(dev, "", state.event);
  error = device_prepare(dev, state);
  trace_device_pm_callback_end(dev, error);

  mutex_lock(&dpm_list_mtx);
  if (error) {
   if (error == -EAGAIN) {
    put_device(dev);
    error = 0;
    continue;
   }
   pr_info("Device %s not prepared for power transition: code %d\n",
    dev_name(dev), error);
   put_device(dev);
   break;
  }
  dev->power.is_prepared = 1;
  if (!list_empty(&dev->power.entry))
   list_move_tail(&dev->power.entry, &dpm_prepared_list);
  put_device(dev);
 }
 mutex_unlock(&dpm_list_mtx);
 trace_suspend_resume(TPS("dpm_prepare"), state.event, 0);
 return error;
}
