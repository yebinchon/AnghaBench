
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BAD_APICID ;
 int NUMA_NO_NODE ;
 int* __apicid_to_node ;
 int early_per_cpu (int ,int) ;
 int x86_cpu_to_apicid ;

int numa_cpu_node(int cpu)
{
 int apicid = early_per_cpu(x86_cpu_to_apicid, cpu);

 if (apicid != BAD_APICID)
  return __apicid_to_node[apicid];
 return NUMA_NO_NODE;
}
