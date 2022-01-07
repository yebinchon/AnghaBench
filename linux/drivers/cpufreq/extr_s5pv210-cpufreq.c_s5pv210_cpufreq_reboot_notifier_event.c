
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 int SLEEP_FREQ ;
 int cpufreq_cpu_get (int ) ;
 int cpufreq_driver_target (int ,int ,int ) ;
 int no_cpufreq_access ;

__attribute__((used)) static int s5pv210_cpufreq_reboot_notifier_event(struct notifier_block *this,
       unsigned long event, void *ptr)
{
 int ret;

 ret = cpufreq_driver_target(cpufreq_cpu_get(0), SLEEP_FREQ, 0);
 if (ret < 0)
  return NOTIFY_BAD;

 no_cpufreq_access = 1;
 return NOTIFY_DONE;
}
