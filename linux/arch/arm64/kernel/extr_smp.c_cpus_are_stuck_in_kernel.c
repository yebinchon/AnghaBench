
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpus_stuck_in_kernel ;
 int have_cpu_die () ;
 int num_possible_cpus () ;

bool cpus_are_stuck_in_kernel(void)
{
 bool smp_spin_tables = (num_possible_cpus() > 1 && !have_cpu_die());

 return !!cpus_stuck_in_kernel || smp_spin_tables;
}
