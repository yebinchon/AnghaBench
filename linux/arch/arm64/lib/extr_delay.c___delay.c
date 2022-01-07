
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long const cycles_t ;


 int ARCH_TIMER_EVT_STREAM_PERIOD_US ;
 unsigned long USECS_TO_CYCLES (int ) ;
 scalar_t__ arch_timer_evtstrm_available () ;
 int cpu_relax () ;
 unsigned long const get_cycles () ;
 int wfe () ;

void __delay(unsigned long cycles)
{
 cycles_t start = get_cycles();

 if (arch_timer_evtstrm_available()) {
  const cycles_t timer_evt_period =
   USECS_TO_CYCLES(ARCH_TIMER_EVT_STREAM_PERIOD_US);

  while ((get_cycles() - start + timer_evt_period) < cycles)
   wfe();
 }

 while ((get_cycles() - start) < cycles)
  cpu_relax();
}
