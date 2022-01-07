
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pnv_phb {int flags; } ;
struct pci_dn {TYPE_1__* phb; } ;
struct pci_bus {int dummy; } ;
struct TYPE_2__ {struct pnv_phb* private_data; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PNV_PHB_FLAG_EEH ;
 struct pci_dn* pci_get_pdn_by_devfn (struct pci_bus*,unsigned int) ;
 int pnv_pci_cfg_check (struct pci_dn*) ;
 int pnv_pci_cfg_write (struct pci_dn*,int,int,int ) ;
 int pnv_pci_config_check_eeh (struct pci_dn*) ;

__attribute__((used)) static int pnv_pci_write_config(struct pci_bus *bus,
    unsigned int devfn,
    int where, int size, u32 val)
{
 struct pci_dn *pdn;
 struct pnv_phb *phb;
 int ret;

 pdn = pci_get_pdn_by_devfn(bus, devfn);
 if (!pdn)
  return PCIBIOS_DEVICE_NOT_FOUND;

 if (!pnv_pci_cfg_check(pdn))
  return PCIBIOS_DEVICE_NOT_FOUND;

 ret = pnv_pci_cfg_write(pdn, where, size, val);
 phb = pdn->phb->private_data;
 if (!(phb->flags & PNV_PHB_FLAG_EEH))
  pnv_pci_config_check_eeh(pdn);

 return ret;
}
