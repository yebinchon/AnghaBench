
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {int dev; } ;


 int PCI_REVISION_ID ;
 unsigned char RSXX_DISCARD_SUPPORT ;
 int pci_read_config_byte (int ,int ,unsigned char*) ;

__attribute__((used)) static bool rsxx_discard_supported(struct rsxx_cardinfo *card)
{
 unsigned char pci_rev;

 pci_read_config_byte(card->dev, PCI_REVISION_ID, &pci_rev);

 return (pci_rev >= RSXX_DISCARD_SUPPORT);
}
