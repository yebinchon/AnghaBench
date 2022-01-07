
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int machine_halt () ;

__attribute__((used)) static void ipi_cpu_stop(void)
{
 machine_halt();
}
