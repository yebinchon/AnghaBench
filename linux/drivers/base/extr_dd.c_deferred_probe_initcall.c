
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int debugfs_create_file (char*,int,int *,int *,int *) ;
 int deferred_devices ;
 int deferred_devs_fops ;
 int deferred_probe_timeout ;
 int deferred_probe_timeout_work ;
 int deferred_probe_work ;
 int driver_deferred_probe_enable ;
 int driver_deferred_probe_trigger () ;
 int flush_work (int *) ;
 int initcalls_done ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static int deferred_probe_initcall(void)
{
 deferred_devices = debugfs_create_file("devices_deferred", 0444, ((void*)0),
            ((void*)0), &deferred_devs_fops);

 driver_deferred_probe_enable = 1;
 driver_deferred_probe_trigger();

 flush_work(&deferred_probe_work);
 initcalls_done = 1;





 driver_deferred_probe_trigger();
 flush_work(&deferred_probe_work);

 if (deferred_probe_timeout > 0) {
  schedule_delayed_work(&deferred_probe_timeout_work,
   deferred_probe_timeout * HZ);
 }
 return 0;
}
