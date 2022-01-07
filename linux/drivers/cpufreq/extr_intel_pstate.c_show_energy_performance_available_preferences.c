
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;
typedef int ssize_t ;


 char** energy_perf_strings ;
 scalar_t__ sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t show_energy_performance_available_preferences(
    struct cpufreq_policy *policy, char *buf)
{
 int i = 0;
 int ret = 0;

 while (energy_perf_strings[i] != ((void*)0))
  ret += sprintf(&buf[ret], "%s ", energy_perf_strings[i++]);

 ret += sprintf(&buf[ret], "\n");

 return ret;
}
