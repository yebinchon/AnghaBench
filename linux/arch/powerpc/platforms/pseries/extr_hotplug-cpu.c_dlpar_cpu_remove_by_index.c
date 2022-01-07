
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int ENODEV ;
 struct device_node* cpu_drc_index_to_dn (int ) ;
 int dlpar_cpu_remove (struct device_node*,int ) ;
 int of_node_put (struct device_node*) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int dlpar_cpu_remove_by_index(u32 drc_index)
{
 struct device_node *dn;
 int rc;

 dn = cpu_drc_index_to_dn(drc_index);
 if (!dn) {
  pr_warn("Cannot find CPU (drc index %x) to remove\n",
   drc_index);
  return -ENODEV;
 }

 rc = dlpar_cpu_remove(dn, drc_index);
 of_node_put(dn);
 return rc;
}
