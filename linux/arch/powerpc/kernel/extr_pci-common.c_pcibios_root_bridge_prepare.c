
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_host_bridge {int dummy; } ;
struct TYPE_2__ {int (* pcibios_root_bridge_prepare ) (struct pci_host_bridge*) ;} ;


 TYPE_1__ ppc_md ;
 int stub1 (struct pci_host_bridge*) ;

int pcibios_root_bridge_prepare(struct pci_host_bridge *bridge)
{
 if (ppc_md.pcibios_root_bridge_prepare)
  return ppc_md.pcibios_root_bridge_prepare(bridge);

 return 0;
}
