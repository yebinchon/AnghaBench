
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ enabled_devices ;
 scalar_t__ initialized ;
 int synchronize_rcu () ;
 int wake_up_all_idle_cpus () ;

void cpuidle_uninstall_idle_handler(void)
{
 if (enabled_devices) {
  initialized = 0;
  wake_up_all_idle_cpus();
 }





 synchronize_rcu();
}
