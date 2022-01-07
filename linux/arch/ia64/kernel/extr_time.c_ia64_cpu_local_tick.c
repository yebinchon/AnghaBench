
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long itm_delta; scalar_t__ itm_next; } ;


 int IA64_TIMER_VECTOR ;
 unsigned long ia64_fls (int) ;
 scalar_t__ ia64_get_itc () ;
 int ia64_set_itm (scalar_t__) ;
 int ia64_set_itv (int ) ;
 TYPE_1__* local_cpu_data ;
 int smp_processor_id () ;

void
ia64_cpu_local_tick (void)
{
 int cpu = smp_processor_id();
 unsigned long shift = 0, delta;


 ia64_set_itv(IA64_TIMER_VECTOR);

 delta = local_cpu_data->itm_delta;




 if (cpu) {
  unsigned long hi = 1UL << ia64_fls(cpu);
  shift = (2*(cpu - hi) + 1) * delta/hi/2;
 }
 local_cpu_data->itm_next = ia64_get_itc() + delta + shift;
 ia64_set_itm(local_cpu_data->itm_next);
}
