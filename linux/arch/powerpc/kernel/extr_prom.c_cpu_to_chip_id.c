
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_get_cpu_node (int,int *) ;
 int of_get_ibm_chip_id (struct device_node*) ;
 int of_node_put (struct device_node*) ;

int cpu_to_chip_id(int cpu)
{
 struct device_node *np;

 np = of_get_cpu_node(cpu, ((void*)0));
 if (!np)
  return -1;

 of_node_put(np);
 return of_get_ibm_chip_id(np);
}
