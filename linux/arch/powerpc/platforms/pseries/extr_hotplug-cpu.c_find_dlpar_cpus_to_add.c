
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 scalar_t__ dlpar_cpu_exists (struct device_node*,int) ;
 int kfree (int*) ;
 struct device_node* of_find_node_by_path (char*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32_index (struct device_node*,char*,int ,int*) ;
 int pr_warn (char*) ;

__attribute__((used)) static int find_dlpar_cpus_to_add(u32 *cpu_drcs, u32 cpus_to_add)
{
 struct device_node *parent;
 int cpus_found = 0;
 int index, rc;

 parent = of_find_node_by_path("/cpus");
 if (!parent) {
  pr_warn("Could not find CPU root node in device tree\n");
  kfree(cpu_drcs);
  return -1;
 }






 index = 1;
 while (cpus_found < cpus_to_add) {
  u32 drc;

  rc = of_property_read_u32_index(parent, "ibm,drc-indexes",
      index++, &drc);
  if (rc)
   break;

  if (dlpar_cpu_exists(parent, drc))
   continue;

  cpu_drcs[cpus_found++] = drc;
 }

 of_node_put(parent);
 return cpus_found;
}
