
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int NUMA_NO_NODE ;
 int WARN_ON (int) ;
 scalar_t__ cpu_present (unsigned long) ;
 int first_online_node ;
 int map_cpu_to_node (unsigned long,int) ;
 int node_possible (int) ;
 int* numa_cpu_lookup_table ;
 struct device_node* of_get_cpu_node (unsigned long,int *) ;
 int of_node_put (struct device_node*) ;
 int of_node_to_nid_single (struct device_node*) ;

__attribute__((used)) static int numa_setup_cpu(unsigned long lcpu)
{
 int nid = NUMA_NO_NODE;
 struct device_node *cpu;






 if ((nid = numa_cpu_lookup_table[lcpu]) >= 0) {
  map_cpu_to_node(lcpu, nid);
  return nid;
 }

 cpu = of_get_cpu_node(lcpu, ((void*)0));

 if (!cpu) {
  WARN_ON(1);
  if (cpu_present(lcpu))
   goto out_present;
  else
   goto out;
 }

 nid = of_node_to_nid_single(cpu);

out_present:
 if (nid < 0 || !node_possible(nid))
  nid = first_online_node;

 map_cpu_to_node(lcpu, nid);
 of_node_put(cpu);
out:
 return nid;
}
