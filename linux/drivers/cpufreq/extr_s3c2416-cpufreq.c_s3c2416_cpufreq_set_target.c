
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c2416_data {scalar_t__ is_dvs; TYPE_1__* freq_table; int hclk; scalar_t__ disable_dvs; } ;
struct cpufreq_policy {int dummy; } ;
struct TYPE_2__ {int driver_data; int frequency; } ;


 int EINVAL ;
 int SOURCE_HCLK ;
 int clk_get_rate (int ) ;
 int cpufreq_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,...) ;
 struct s3c2416_data s3c2416_cpufreq ;
 int s3c2416_cpufreq_enter_dvs (struct s3c2416_data*,int) ;
 int s3c2416_cpufreq_leave_dvs (struct s3c2416_data*,int) ;
 int s3c2416_cpufreq_set_armdiv (struct s3c2416_data*,unsigned int) ;

__attribute__((used)) static int s3c2416_cpufreq_set_target(struct cpufreq_policy *policy,
          unsigned int index)
{
 struct s3c2416_data *s3c_freq = &s3c2416_cpufreq;
 unsigned int new_freq;
 int idx, ret, to_dvs = 0;

 mutex_lock(&cpufreq_lock);

 idx = s3c_freq->freq_table[index].driver_data;

 if (idx == SOURCE_HCLK)
  to_dvs = 1;


 if (to_dvs && s3c_freq->disable_dvs) {
  pr_debug("cpufreq: entering dvs mode not allowed\n");
  ret = -EINVAL;
  goto out;
 }





 new_freq = (s3c_freq->is_dvs && !to_dvs)
    ? clk_get_rate(s3c_freq->hclk) / 1000
    : s3c_freq->freq_table[index].frequency;

 if (to_dvs) {
  pr_debug("cpufreq: enter dvs\n");
  ret = s3c2416_cpufreq_enter_dvs(s3c_freq, idx);
 } else if (s3c_freq->is_dvs) {
  pr_debug("cpufreq: leave dvs\n");
  ret = s3c2416_cpufreq_leave_dvs(s3c_freq, idx);
 } else {
  pr_debug("cpufreq: change armdiv to %dkHz\n", new_freq);
  ret = s3c2416_cpufreq_set_armdiv(s3c_freq, new_freq);
 }

out:
 mutex_unlock(&cpufreq_lock);

 return ret;
}
