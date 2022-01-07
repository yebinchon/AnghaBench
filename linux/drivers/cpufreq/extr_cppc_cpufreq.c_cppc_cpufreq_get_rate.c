
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cppc_perf_fb_ctrs {int member_0; } ;
struct cppc_cpudata {int dummy; } ;


 struct cppc_cpudata** all_cpu_data ;
 scalar_t__ apply_hisi_workaround ;
 int cppc_get_perf_ctrs (unsigned int,struct cppc_perf_fb_ctrs*) ;
 unsigned int cppc_get_rate_from_fbctrs (struct cppc_cpudata*,struct cppc_perf_fb_ctrs,struct cppc_perf_fb_ctrs) ;
 unsigned int hisi_cppc_cpufreq_get_rate (unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static unsigned int cppc_cpufreq_get_rate(unsigned int cpunum)
{
 struct cppc_perf_fb_ctrs fb_ctrs_t0 = {0}, fb_ctrs_t1 = {0};
 struct cppc_cpudata *cpu = all_cpu_data[cpunum];
 int ret;

 if (apply_hisi_workaround)
  return hisi_cppc_cpufreq_get_rate(cpunum);

 ret = cppc_get_perf_ctrs(cpunum, &fb_ctrs_t0);
 if (ret)
  return ret;

 udelay(2);

 ret = cppc_get_perf_ctrs(cpunum, &fb_ctrs_t1);
 if (ret)
  return ret;

 return cppc_get_rate_from_fbctrs(cpu, fb_ctrs_t0, fb_ctrs_t1);
}
