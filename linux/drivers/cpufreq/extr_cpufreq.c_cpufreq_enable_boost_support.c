
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int set_boost; } ;


 int EINVAL ;
 int cpufreq_boost_set_sw ;
 scalar_t__ cpufreq_boost_supported () ;
 TYPE_1__* cpufreq_driver ;
 int create_boost_sysfs_file () ;

int cpufreq_enable_boost_support(void)
{
 if (!cpufreq_driver)
  return -EINVAL;

 if (cpufreq_boost_supported())
  return 0;

 cpufreq_driver->set_boost = cpufreq_boost_set_sw;


 return create_boost_sysfs_file();
}
