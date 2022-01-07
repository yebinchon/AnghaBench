
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ s64 ;
typedef int ktime_t ;
struct TYPE_2__ {int time; } ;


 scalar_t__ APERFMPERF_CACHE_THRESHOLD_MS ;
 scalar_t__ APERFMPERF_STALE_THRESHOLD_MS ;
 int aperfmperf_snapshot_khz ;
 scalar_t__ ktime_ms_delta (int ,int ) ;
 int per_cpu (int ,int) ;
 TYPE_1__ samples ;
 int smp_call_function_single (int,int ,int *,int) ;

__attribute__((used)) static bool aperfmperf_snapshot_cpu(int cpu, ktime_t now, bool wait)
{
 s64 time_delta = ktime_ms_delta(now, per_cpu(samples.time, cpu));


 if (time_delta < APERFMPERF_CACHE_THRESHOLD_MS)
  return 1;

 smp_call_function_single(cpu, aperfmperf_snapshot_khz, ((void*)0), wait);


 return time_delta <= APERFMPERF_STALE_THRESHOLD_MS;
}
