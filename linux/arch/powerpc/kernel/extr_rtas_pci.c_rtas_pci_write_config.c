
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dn {int dummy; } ;
struct pci_bus {int dummy; } ;


 struct pci_dn* pci_get_pdn_by_devfn (struct pci_bus*,unsigned int) ;
 int rtas_write_config (struct pci_dn*,int,int,int ) ;

__attribute__((used)) static int rtas_pci_write_config(struct pci_bus *bus,
     unsigned int devfn,
     int where, int size, u32 val)
{
 struct pci_dn *pdn;

 pdn = pci_get_pdn_by_devfn(bus, devfn);


 return rtas_write_config(pdn, where, size, val);
}
