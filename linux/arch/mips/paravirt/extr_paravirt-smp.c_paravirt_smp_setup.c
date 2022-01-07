
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NR_CPUS ;
 scalar_t__ WARN_ON (int) ;
 int* __cpu_logical_map ;
 int* __cpu_number_map ;
 unsigned int get_ebase_cpunum () ;
 int numcpus ;
 int set_cpu_possible (int,int) ;
 int set_cpu_present (int,int) ;

__attribute__((used)) static void paravirt_smp_setup(void)
{
 int id;
 unsigned int cpunum = get_ebase_cpunum();

 if (WARN_ON(cpunum >= NR_CPUS))
  return;


 for (id = 0; id < NR_CPUS; id++) {
  set_cpu_possible(id, id == 0);
  set_cpu_present(id, id == 0);
 }
 __cpu_number_map[cpunum] = 0;
 __cpu_logical_map[0] = cpunum;

 for (id = 0; id < numcpus; id++) {
  set_cpu_possible(id, 1);
  set_cpu_present(id, 1);
  __cpu_number_map[id] = id;
  __cpu_logical_map[id] = id;
 }
}
