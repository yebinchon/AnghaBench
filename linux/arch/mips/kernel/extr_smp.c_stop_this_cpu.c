
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int calculate_cpu_foreign_map () ;
 int local_irq_disable () ;
 int set_cpu_online (int ,int) ;
 int smp_processor_id () ;

__attribute__((used)) static void stop_this_cpu(void *dummy)
{




 set_cpu_online(smp_processor_id(), 0);
 calculate_cpu_foreign_map();
 local_irq_disable();
 while (1);
}
