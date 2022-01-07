
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __us2e_freq_get ;
 unsigned long estar_to_divisor (unsigned long) ;
 scalar_t__ smp_call_function_single (unsigned int,int ,unsigned long*,int) ;
 int sparc64_get_clock_tick (unsigned int) ;

__attribute__((used)) static unsigned int us2e_freq_get(unsigned int cpu)
{
 unsigned long clock_tick, estar;

 clock_tick = sparc64_get_clock_tick(cpu) / 1000;
 if (smp_call_function_single(cpu, __us2e_freq_get, &estar, 1))
  return 0;

 return clock_tick / estar_to_divisor(estar);
}
