
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_driver {int name; } ;


 int EINVAL ;
 struct cpufreq_driver* cpufreq_driver ;
 int cpufreq_driver_lock ;
 int cpufreq_interface ;
 int cpuhp_remove_state_nocalls_cpuslocked (int ) ;
 int cpus_read_lock () ;
 int cpus_read_unlock () ;
 int hp_online ;
 int pr_debug (char*,int ) ;
 int remove_boost_sysfs_file () ;
 int subsys_interface_unregister (int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

int cpufreq_unregister_driver(struct cpufreq_driver *driver)
{
 unsigned long flags;

 if (!cpufreq_driver || (driver != cpufreq_driver))
  return -EINVAL;

 pr_debug("unregistering driver %s\n", driver->name);


 cpus_read_lock();
 subsys_interface_unregister(&cpufreq_interface);
 remove_boost_sysfs_file();
 cpuhp_remove_state_nocalls_cpuslocked(hp_online);

 write_lock_irqsave(&cpufreq_driver_lock, flags);

 cpufreq_driver = ((void*)0);

 write_unlock_irqrestore(&cpufreq_driver_lock, flags);
 cpus_read_unlock();

 return 0;
}
