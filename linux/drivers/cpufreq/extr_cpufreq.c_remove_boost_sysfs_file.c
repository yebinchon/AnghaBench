
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attr; } ;


 TYPE_1__ boost ;
 scalar_t__ cpufreq_boost_supported () ;
 int cpufreq_global_kobject ;
 int sysfs_remove_file (int ,int *) ;

__attribute__((used)) static void remove_boost_sysfs_file(void)
{
 if (cpufreq_boost_supported())
  sysfs_remove_file(cpufreq_global_kobject, &boost.attr);
}
