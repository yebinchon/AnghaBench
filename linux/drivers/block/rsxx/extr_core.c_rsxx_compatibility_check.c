
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {int dev; } ;


 int PCI_REVISION_ID ;
 unsigned char RS70_PCI_REV_SUPPORTED ;
 int pci_read_config_byte (int ,int ,unsigned char*) ;

__attribute__((used)) static int rsxx_compatibility_check(struct rsxx_cardinfo *card)
{
 unsigned char pci_rev;

 pci_read_config_byte(card->dev, PCI_REVISION_ID, &pci_rev);

 if (pci_rev > RS70_PCI_REV_SUPPORTED)
  return -1;
 return 0;
}
