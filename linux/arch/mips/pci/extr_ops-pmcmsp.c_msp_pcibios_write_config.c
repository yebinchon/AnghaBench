
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_bus {int dummy; } ;


 int PCIBIOS_SUCCESSFUL ;
 scalar_t__ msp_pcibios_write_config_byte (struct pci_bus*,unsigned int,int,int ) ;
 scalar_t__ msp_pcibios_write_config_dword (struct pci_bus*,unsigned int,int,int) ;
 scalar_t__ msp_pcibios_write_config_word (struct pci_bus*,unsigned int,int,int ) ;

int
msp_pcibios_write_config(struct pci_bus *bus,
   unsigned int devfn,
   int where,
   int size,
   u32 val)
{
 if (size == 1) {
  if (msp_pcibios_write_config_byte(bus, devfn,
      where, (u8)(0xFF & val))) {
   return -1;
  }
 } else if (size == 2) {
  if (msp_pcibios_write_config_word(bus, devfn,
      where, (u16)(0xFFFF & val))) {
   return -1;
  }
 } else if (size == 4) {
  if (msp_pcibios_write_config_dword(bus, devfn, where, val)) {
   return -1;
  }
 } else {
  return -1;
 }

 return PCIBIOS_SUCCESSFUL;
}
