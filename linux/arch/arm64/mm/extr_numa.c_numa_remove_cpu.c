
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int numa_update_cpu (unsigned int,int) ;

void numa_remove_cpu(unsigned int cpu)
{
 numa_update_cpu(cpu, 1);
}
