
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int machine_halt () ;
 int set_cpu_online (unsigned int,int) ;

__attribute__((used)) static void ipi_cpu_stop(unsigned int cpu)
{
 set_cpu_online(cpu, 0);
 machine_halt();
}
