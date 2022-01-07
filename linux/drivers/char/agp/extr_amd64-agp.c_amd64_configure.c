
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct pci_dev {int dummy; } ;


 int AMD64_GARTAPERTUREBASE ;
 int PCI_BASE_ADDRESS_MEM_MASK ;
 int enable_gart_translation (struct pci_dev*,int) ;
 int pci_read_config_dword (struct pci_dev*,int ,scalar_t__*) ;

__attribute__((used)) static u64 amd64_configure(struct pci_dev *hammer, u64 gatt_table)
{
 u64 aperturebase;
 u32 tmp;
 u64 aper_base;


 pci_read_config_dword(hammer, AMD64_GARTAPERTUREBASE, &tmp);
 aperturebase = (u64)tmp << 25;
 aper_base = (aperturebase & PCI_BASE_ADDRESS_MEM_MASK);

 enable_gart_translation(hammer, gatt_table);

 return aper_base;
}
