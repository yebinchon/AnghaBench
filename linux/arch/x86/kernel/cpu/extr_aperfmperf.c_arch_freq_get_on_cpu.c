
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int khz; } ;


 int APERFMPERF_REFRESH_DELAY_MS ;
 int HK_FLAG_MISC ;
 int X86_FEATURE_APERFMPERF ;
 scalar_t__ aperfmperf_snapshot_cpu (int,int ,int) ;
 int aperfmperf_snapshot_khz ;
 int boot_cpu_has (int ) ;
 int cpu_khz ;
 int housekeeping_cpu (int,int ) ;
 int ktime_get () ;
 int msleep (int ) ;
 unsigned int per_cpu (int ,int) ;
 TYPE_1__ samples ;
 int smp_call_function_single (int,int ,int *,int) ;

unsigned int arch_freq_get_on_cpu(int cpu)
{
 if (!cpu_khz)
  return 0;

 if (!boot_cpu_has(X86_FEATURE_APERFMPERF))
  return 0;

 if (!housekeeping_cpu(cpu, HK_FLAG_MISC))
  return 0;

 if (aperfmperf_snapshot_cpu(cpu, ktime_get(), 1))
  return per_cpu(samples.khz, cpu);

 msleep(APERFMPERF_REFRESH_DELAY_MS);
 smp_call_function_single(cpu, aperfmperf_snapshot_khz, ((void*)0), 1);

 return per_cpu(samples.khz, cpu);
}
