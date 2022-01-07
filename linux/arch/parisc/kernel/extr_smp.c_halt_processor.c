
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __pdc_cpu_rendezvous () ;
 int local_irq_disable () ;
 int set_cpu_online (int ,int) ;
 int smp_processor_id () ;

__attribute__((used)) static void
halt_processor(void)
{


 set_cpu_online(smp_processor_id(), 0);
 local_irq_disable();
 __pdc_cpu_rendezvous();
 for (;;)
  ;
}
