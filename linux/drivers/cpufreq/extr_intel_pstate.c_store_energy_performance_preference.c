
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {size_t cpu; } ;
struct cpudata {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct cpudata** all_cpu_data ;
 int energy_perf_strings ;
 int intel_pstate_set_energy_pref_index (struct cpudata*,int) ;
 int match_string (int ,int,char*) ;
 int sscanf (char const*,char*,char*) ;

__attribute__((used)) static ssize_t store_energy_performance_preference(
  struct cpufreq_policy *policy, const char *buf, size_t count)
{
 struct cpudata *cpu_data = all_cpu_data[policy->cpu];
 char str_preference[21];
 int ret;

 ret = sscanf(buf, "%20s", str_preference);
 if (ret != 1)
  return -EINVAL;

 ret = match_string(energy_perf_strings, -1, str_preference);
 if (ret < 0)
  return ret;

 intel_pstate_set_energy_pref_index(cpu_data, ret);
 return count;
}
