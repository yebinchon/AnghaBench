
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;
typedef int ssize_t ;


 unsigned int __cpufreq_get (struct cpufreq_policy*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t show_cpuinfo_cur_freq(struct cpufreq_policy *policy,
     char *buf)
{
 unsigned int cur_freq = __cpufreq_get(policy);

 if (cur_freq)
  return sprintf(buf, "%u\n", cur_freq);

 return sprintf(buf, "<unknown>\n");
}
