
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2416_data {int disable_dvs; scalar_t__ is_dvs; } ;
struct notifier_block {int dummy; } ;


 int FREQ_SLEEP ;
 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 int cpufreq_cpu_get (int ) ;
 int cpufreq_driver_target (int ,int ,int ) ;
 int cpufreq_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 struct s3c2416_data s3c2416_cpufreq ;

__attribute__((used)) static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
            unsigned long event, void *ptr)
{
 struct s3c2416_data *s3c_freq = &s3c2416_cpufreq;
 int ret;

 mutex_lock(&cpufreq_lock);


 s3c_freq->disable_dvs = 1;

 mutex_unlock(&cpufreq_lock);





 if (s3c_freq->is_dvs) {
  pr_debug("cpufreq: leave dvs on reboot\n");
  ret = cpufreq_driver_target(cpufreq_cpu_get(0), FREQ_SLEEP, 0);
  if (ret < 0)
   return NOTIFY_BAD;
 }

 return NOTIFY_DONE;
}
