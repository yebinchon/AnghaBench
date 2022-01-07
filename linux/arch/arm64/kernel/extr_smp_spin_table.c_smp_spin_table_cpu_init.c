
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int ENODEV ;
 int * cpu_release_addr ;
 struct device_node* of_get_cpu_node (unsigned int,int *) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u64 (struct device_node*,char*,int *) ;
 int pr_err (char*,unsigned int) ;

__attribute__((used)) static int smp_spin_table_cpu_init(unsigned int cpu)
{
 struct device_node *dn;
 int ret;

 dn = of_get_cpu_node(cpu, ((void*)0));
 if (!dn)
  return -ENODEV;




 ret = of_property_read_u64(dn, "cpu-release-addr",
       &cpu_release_addr[cpu]);
 if (ret)
  pr_err("CPU %d: missing or invalid cpu-release-addr property\n",
         cpu);

 of_node_put(dn);

 return ret;
}
