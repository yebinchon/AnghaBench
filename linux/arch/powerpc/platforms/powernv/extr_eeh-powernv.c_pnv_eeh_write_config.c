
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dn {int dummy; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SET_FAILED ;
 scalar_t__ pnv_eeh_cfg_blocked (struct pci_dn*) ;
 int pnv_pci_cfg_write (struct pci_dn*,int,int,int ) ;

__attribute__((used)) static int pnv_eeh_write_config(struct pci_dn *pdn,
    int where, int size, u32 val)
{
 if (!pdn)
  return PCIBIOS_DEVICE_NOT_FOUND;

 if (pnv_eeh_cfg_blocked(pdn))
  return PCIBIOS_SET_FAILED;

 return pnv_pci_cfg_write(pdn, where, size, val);
}
