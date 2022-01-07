
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long native_calibrate_cpu_early () ;
 unsigned long pit_hpet_ptimer_calibrate_cpu () ;

__attribute__((used)) static unsigned long native_calibrate_cpu(void)
{
 unsigned long tsc_freq = native_calibrate_cpu_early();

 if (!tsc_freq)
  tsc_freq = pit_hpet_ptimer_calibrate_cpu();

 return tsc_freq;
}
