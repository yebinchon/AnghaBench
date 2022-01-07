
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct aperfmperf_sample {scalar_t__ aperf; scalar_t__ mperf; int khz; int time; } ;


 int MSR_IA32_APERF ;
 int MSR_IA32_MPERF ;
 scalar_t__ cpu_khz ;
 int div64_u64 (scalar_t__,scalar_t__) ;
 int ktime_get () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int rdmsrl (int ,scalar_t__) ;
 int samples ;
 struct aperfmperf_sample* this_cpu_ptr (int *) ;

__attribute__((used)) static void aperfmperf_snapshot_khz(void *dummy)
{
 u64 aperf, aperf_delta;
 u64 mperf, mperf_delta;
 struct aperfmperf_sample *s = this_cpu_ptr(&samples);
 unsigned long flags;

 local_irq_save(flags);
 rdmsrl(MSR_IA32_APERF, aperf);
 rdmsrl(MSR_IA32_MPERF, mperf);
 local_irq_restore(flags);

 aperf_delta = aperf - s->aperf;
 mperf_delta = mperf - s->mperf;





 if (mperf_delta == 0)
  return;

 s->time = ktime_get();
 s->aperf = aperf;
 s->mperf = mperf;
 s->khz = div64_u64((cpu_khz * aperf_delta), mperf_delta);
}
