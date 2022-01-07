
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_logical_map (int) ;
 int get_ebase_cpunum () ;

__attribute__((used)) static int cpunum_for_cpu(int cpu)
{



 return get_ebase_cpunum();

}
