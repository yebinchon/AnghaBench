
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int numa_setup_cpu (unsigned int) ;
 int verify_cpu_node_mapping (unsigned int,int) ;

__attribute__((used)) static int ppc_numa_cpu_prepare(unsigned int cpu)
{
 int nid;

 nid = numa_setup_cpu(cpu);
 verify_cpu_node_mapping(cpu, nid);
 return 0;
}
