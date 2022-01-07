
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_cpu_online (int ,int) ;
 int smp_processor_id () ;
 int wait_for_interrupt () ;

__attribute__((used)) static void ipi_stop(void)
{
 set_cpu_online(smp_processor_id(), 0);
 while (1)
  wait_for_interrupt();
}
