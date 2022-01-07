
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dn {int dummy; } ;


 int PCI_CAPABILITY_LIST ;
 int PCI_CAP_LIST_ID ;
 scalar_t__ PCI_CAP_LIST_NEXT ;
 int PCI_STATUS ;
 int PCI_STATUS_CAP_LIST ;
 int pnv_pci_cfg_read (struct pci_dn*,int,int,int*) ;

__attribute__((used)) static int pnv_eeh_find_cap(struct pci_dn *pdn, int cap)
{
 int pos = PCI_CAPABILITY_LIST;
 int cnt = 48;
 u32 status, id;

 if (!pdn)
  return 0;


 pnv_pci_cfg_read(pdn, PCI_STATUS, 2, &status);
 if (!(status & PCI_STATUS_CAP_LIST))
  return 0;

 while (cnt--) {
  pnv_pci_cfg_read(pdn, pos, 1, &pos);
  if (pos < 0x40)
   break;

  pos &= ~3;
  pnv_pci_cfg_read(pdn, pos + PCI_CAP_LIST_ID, 1, &id);
  if (id == 0xff)
   break;


  if (id == cap)
   return pos;


  pos += PCI_CAP_LIST_NEXT;
 }

 return 0;
}
