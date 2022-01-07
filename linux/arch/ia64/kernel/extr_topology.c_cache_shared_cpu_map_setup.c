
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_info {int shared_cpu_map; } ;


 int cpumask_set_cpu (unsigned int,int *) ;

__attribute__((used)) static void cache_shared_cpu_map_setup(unsigned int cpu,
  struct cache_info * this_leaf)
{
 cpumask_set_cpu(cpu, &this_leaf->shared_cpu_map);
 return;
}
