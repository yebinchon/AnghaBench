
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN (int,char*,int,int) ;
 int cpu_first_thread_sibling (int) ;
 scalar_t__ cpu_is_offline (int) ;
 int cpu_to_node (int) ;
 int threads_per_core ;

__attribute__((used)) static void verify_cpu_node_mapping(int cpu, int node)
{
 int base, sibling, i;


 base = cpu_first_thread_sibling(cpu);

 for (i = 0; i < threads_per_core; i++) {
  sibling = base + i;

  if (sibling == cpu || cpu_is_offline(sibling))
   continue;

  if (cpu_to_node(sibling) != node) {
   WARN(1, "CPU thread siblings %d and %d don't belong"
    " to the same node!\n", cpu, sibling);
   break;
  }
 }
}
