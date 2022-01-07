
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int TSC_DIVISOR ;
 int X86_FEATURE_TSC_DEADLINE_TIMER ;
 int clockevents_update_freq (struct clock_event_device*,int) ;
 int lapic_events ;
 int this_cpu_has (int ) ;
 struct clock_event_device* this_cpu_ptr (int *) ;
 int tsc_khz ;

__attribute__((used)) static void __lapic_update_tsc_freq(void *info)
{
 struct clock_event_device *levt = this_cpu_ptr(&lapic_events);

 if (!this_cpu_has(X86_FEATURE_TSC_DEADLINE_TIMER))
  return;

 clockevents_update_freq(levt, tsc_khz * (1000 / TSC_DIVISOR));
}
