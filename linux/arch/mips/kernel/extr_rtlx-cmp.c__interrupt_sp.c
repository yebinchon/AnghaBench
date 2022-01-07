
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aprp_cpu_index () ;
 int smp_send_reschedule (int ) ;

void _interrupt_sp(void)
{
 smp_send_reschedule(aprp_cpu_index());
}
