
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_freqs {unsigned long new; } ;


 int X86_FEATURE_CONSTANT_TSC ;
 int __this_cpu_write (int ,unsigned long) ;
 int boot_cpu_has (int ) ;
 int cpu_tsc_khz ;
 unsigned long cpufreq_quick_get (int ) ;
 int raw_smp_processor_id () ;
 unsigned long tsc_khz ;

__attribute__((used)) static void tsc_khz_changed(void *data)
{
 struct cpufreq_freqs *freq = data;
 unsigned long khz = 0;

 if (data)
  khz = freq->new;
 else if (!boot_cpu_has(X86_FEATURE_CONSTANT_TSC))
  khz = cpufreq_quick_get(raw_smp_processor_id());
 if (!khz)
  khz = tsc_khz;
 __this_cpu_write(cpu_tsc_khz, khz);
}
