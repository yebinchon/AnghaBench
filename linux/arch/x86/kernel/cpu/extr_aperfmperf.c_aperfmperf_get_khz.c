
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int khz; } ;


 int HK_FLAG_MISC ;
 int X86_FEATURE_APERFMPERF ;
 int aperfmperf_snapshot_cpu (int,int ,int) ;
 int boot_cpu_has (int ) ;
 int cpu_khz ;
 int housekeeping_cpu (int,int ) ;
 int ktime_get () ;
 unsigned int per_cpu (int ,int) ;
 TYPE_1__ samples ;

unsigned int aperfmperf_get_khz(int cpu)
{
 if (!cpu_khz)
  return 0;

 if (!boot_cpu_has(X86_FEATURE_APERFMPERF))
  return 0;

 if (!housekeeping_cpu(cpu, HK_FLAG_MISC))
  return 0;

 aperfmperf_snapshot_cpu(cpu, ktime_get(), 1);
 return per_cpu(samples.khz, cpu);
}
