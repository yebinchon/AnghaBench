
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int cpu_present (int) ;
 struct device_node* of_find_next_cache_node (struct device_node*) ;
 struct device_node* of_get_cpu_node (int,int *) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static struct device_node *cpu_to_l2cache(int cpu)
{
 struct device_node *np;
 struct device_node *cache;

 if (!cpu_present(cpu))
  return ((void*)0);

 np = of_get_cpu_node(cpu, ((void*)0));
 if (np == ((void*)0))
  return ((void*)0);

 cache = of_find_next_cache_node(np);

 of_node_put(np);

 return cache;
}
