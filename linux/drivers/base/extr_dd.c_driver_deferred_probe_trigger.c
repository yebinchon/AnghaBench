
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_inc (int *) ;
 int deferred_probe_active_list ;
 int deferred_probe_mutex ;
 int deferred_probe_pending_list ;
 int deferred_probe_work ;
 int deferred_trigger_count ;
 int driver_deferred_probe_enable ;
 int list_splice_tail_init (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void driver_deferred_probe_trigger(void)
{
 if (!driver_deferred_probe_enable)
  return;






 mutex_lock(&deferred_probe_mutex);
 atomic_inc(&deferred_trigger_count);
 list_splice_tail_init(&deferred_probe_pending_list,
         &deferred_probe_active_list);
 mutex_unlock(&deferred_probe_mutex);





 schedule_work(&deferred_probe_work);
}
