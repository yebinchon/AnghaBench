
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;
typedef int ssize_t ;


 int show_available_freqs (struct cpufreq_policy*,char*,int) ;

__attribute__((used)) static ssize_t scaling_available_frequencies_show(struct cpufreq_policy *policy,
        char *buf)
{
 return show_available_freqs(policy, buf, 0);
}
