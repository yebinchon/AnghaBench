
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_bus {int dummy; } ;
struct TYPE_2__ {int icd; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int check_abort () ;
 int le16_to_cpu (int volatile) ;
 int le32_to_cpu (int ) ;
 scalar_t__ mkaddr (struct pci_bus*,unsigned int,int) ;
 TYPE_1__* tx3927_pcicptr ;

__attribute__((used)) static int tx3927_pci_read_config(struct pci_bus *bus, unsigned int devfn,
 int where, int size, u32 * val)
{
 if (mkaddr(bus, devfn, where)) {
  *val = 0xffffffff;
  return PCIBIOS_DEVICE_NOT_FOUND;
 }

 switch (size) {
 case 1:
  *val = *(volatile u8 *) ((unsigned long) & tx3927_pcicptr->icd | (where & 3));
  break;

 case 2:
  *val = le16_to_cpu(*(volatile u16 *) ((unsigned long) & tx3927_pcicptr->icd | (where & 3)));
  break;

 case 4:
  *val = le32_to_cpu(tx3927_pcicptr->icd);
  break;
 }

 return check_abort();
}
