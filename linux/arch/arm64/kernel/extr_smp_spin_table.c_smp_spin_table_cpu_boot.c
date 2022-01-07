
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_logical_map (unsigned int) ;
 int sev () ;
 int write_pen_release (int ) ;

__attribute__((used)) static int smp_spin_table_cpu_boot(unsigned int cpu)
{



 write_pen_release(cpu_logical_map(cpu));




 sev();

 return 0;
}
