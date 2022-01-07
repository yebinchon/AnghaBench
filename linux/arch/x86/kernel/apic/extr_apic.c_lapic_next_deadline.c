
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clock_event_device {int dummy; } ;


 int MSR_IA32_TSC_DEADLINE ;
 int TSC_DIVISOR ;
 int rdtsc () ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static int lapic_next_deadline(unsigned long delta,
          struct clock_event_device *evt)
{
 u64 tsc;

 tsc = rdtsc();
 wrmsrl(MSR_IA32_TSC_DEADLINE, tsc + (((u64) delta) * TSC_DIVISOR));
 return 0;
}
