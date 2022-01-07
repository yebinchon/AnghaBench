
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_7__ {int is_prepared; int entry; } ;
struct device {TYPE_1__ power; } ;
struct TYPE_8__ {int event; } ;
typedef TYPE_2__ pm_message_t ;
struct TYPE_9__ {int prev; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int TPS (char*) ;
 int device_complete (struct device*,TYPE_2__) ;
 int device_unblock_probing () ;
 int dpm_list ;
 int dpm_list_mtx ;
 TYPE_3__ dpm_prepared_list ;
 int get_device (struct device*) ;
 int list_empty (TYPE_3__*) ;
 int list_move (int *,struct list_head*) ;
 int list_splice (struct list_head*,int *) ;
 int might_sleep () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (struct device*) ;
 struct device* to_device (int ) ;
 int trace_device_pm_callback_end (struct device*,int ) ;
 int trace_device_pm_callback_start (struct device*,char*,int ) ;
 int trace_suspend_resume (int ,int ,int) ;

void dpm_complete(pm_message_t state)
{
 struct list_head list;

 trace_suspend_resume(TPS("dpm_complete"), state.event, 1);
 might_sleep();

 INIT_LIST_HEAD(&list);
 mutex_lock(&dpm_list_mtx);
 while (!list_empty(&dpm_prepared_list)) {
  struct device *dev = to_device(dpm_prepared_list.prev);

  get_device(dev);
  dev->power.is_prepared = 0;
  list_move(&dev->power.entry, &list);
  mutex_unlock(&dpm_list_mtx);

  trace_device_pm_callback_start(dev, "", state.event);
  device_complete(dev, state);
  trace_device_pm_callback_end(dev, 0);

  mutex_lock(&dpm_list_mtx);
  put_device(dev);
 }
 list_splice(&list, &dpm_list);
 mutex_unlock(&dpm_list_mtx);


 device_unblock_probing();
 trace_suspend_resume(TPS("dpm_complete"), state.event, 0);
}
