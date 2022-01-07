
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int PCI_ACCESS_WRITE ;
 int config_access (int ,struct pci_bus*,unsigned int,int,int *) ;

__attribute__((used)) static int write_config_dword(struct pci_bus *bus, unsigned int devfn,
         int where, u32 val)
{
 return config_access(PCI_ACCESS_WRITE, bus, devfn, where, &val);
}
