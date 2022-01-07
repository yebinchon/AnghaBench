
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_type (int *,char*) ;
 scalar_t__ of_property_read_u32_array (struct device_node*,char*,int *,int) ;
 int pkeys_devtree_defined ;
 int pkeys_total ;

__attribute__((used)) static void scan_pkey_feature(void)
{
 u32 vals[2];
 struct device_node *cpu;

 cpu = of_find_node_by_type(((void*)0), "cpu");
 if (!cpu)
  return;

 if (of_property_read_u32_array(cpu,
   "ibm,processor-storage-keys", vals, 2))
  return;





 pkeys_total = vals[0];
 pkeys_devtree_defined = 1;
}
