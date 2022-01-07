
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int cpumask_t ;


 int cpumask_first (int const*) ;
 int cpumask_next (int,int const*) ;
 int nr_cpu_ids ;
 struct device_node* of_cpu_device_node_get (int) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,unsigned int) ;

__attribute__((used)) static bool idle_state_valid(struct device_node *state_node, unsigned int idx,
        const cpumask_t *cpumask)
{
 int cpu;
 struct device_node *cpu_node, *curr_state_node;
 bool valid = 1;
 for (cpu = cpumask_next(cpumask_first(cpumask), cpumask);
      cpu < nr_cpu_ids; cpu = cpumask_next(cpu, cpumask)) {
  cpu_node = of_cpu_device_node_get(cpu);
  curr_state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
         idx);
  if (state_node != curr_state_node)
   valid = 0;

  of_node_put(curr_state_node);
  of_node_put(cpu_node);
  if (!valid)
   break;
 }

 return valid;
}
