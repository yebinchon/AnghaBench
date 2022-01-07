
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msi_counts {int num_devices; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int PCI_CLASS_BRIDGE_PCI ;
 int be32_to_cpup (int const*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int pr_debug (char*,struct device_node*) ;

__attribute__((used)) static void *count_non_bridge_devices(struct device_node *dn, void *data)
{
 struct msi_counts *counts = data;
 const __be32 *p;
 u32 class;

 pr_debug("rtas_msi: counting %pOF\n", dn);

 p = of_get_property(dn, "class-code", ((void*)0));
 class = p ? be32_to_cpup(p) : 0;

 if ((class >> 8) != PCI_CLASS_BRIDGE_PCI)
  counts->num_devices++;

 return ((void*)0);
}
