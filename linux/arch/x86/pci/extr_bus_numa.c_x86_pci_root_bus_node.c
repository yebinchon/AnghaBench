
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_root_info {int node; } ;


 int NUMA_NO_NODE ;
 struct pci_root_info* x86_find_pci_root_info (int) ;

int x86_pci_root_bus_node(int bus)
{
 struct pci_root_info *info = x86_find_pci_root_info(bus);

 if (!info)
  return NUMA_NO_NODE;

 return info->node;
}
