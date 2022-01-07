
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dn {int dummy; } ;
struct eeh_dev {int pcie_cap; } ;


 scalar_t__ PCIBIOS_SUCCESSFUL ;
 int PCI_EXT_CAP_ID (int ) ;
 int PCI_EXT_CAP_NEXT (int ) ;
 struct eeh_dev* pdn_to_eeh_dev (struct pci_dn*) ;
 scalar_t__ pnv_pci_cfg_read (struct pci_dn*,int,int,int *) ;

__attribute__((used)) static int pnv_eeh_find_ecap(struct pci_dn *pdn, int cap)
{
 struct eeh_dev *edev = pdn_to_eeh_dev(pdn);
 u32 header;
 int pos = 256, ttl = (4096 - 256) / 8;

 if (!edev || !edev->pcie_cap)
  return 0;
 if (pnv_pci_cfg_read(pdn, pos, 4, &header) != PCIBIOS_SUCCESSFUL)
  return 0;
 else if (!header)
  return 0;

 while (ttl-- > 0) {
  if (PCI_EXT_CAP_ID(header) == cap && pos)
   return pos;

  pos = PCI_EXT_CAP_NEXT(header);
  if (pos < 256)
   break;

  if (pnv_pci_cfg_read(pdn, pos, 4, &header) != PCIBIOS_SUCCESSFUL)
   break;
 }

 return 0;
}
