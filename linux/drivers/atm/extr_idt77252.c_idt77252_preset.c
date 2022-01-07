
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct idt77252_dev {int name; int pcidev; } ;


 int IPRINTK (char*,int ) ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MASTER ;
 int PCI_COMMAND_MEMORY ;
 int SAR_CFG_SWRST ;
 int SAR_REG_CFG ;
 int XPRINTK (char*,int ) ;
 int deinit_card (struct idt77252_dev*) ;
 int mdelay (int) ;
 scalar_t__ pci_read_config_word (int ,int ,int*) ;
 scalar_t__ pci_write_config_word (int ,int ,int) ;
 int printk (char*,int ,...) ;
 int writel (int ,int ) ;

__attribute__((used)) static int idt77252_preset(struct idt77252_dev *card)
{
 u16 pci_command;





 XPRINTK("%s: Enable PCI master and memory access for SAR.\n",
  card->name);
 if (pci_read_config_word(card->pcidev, PCI_COMMAND, &pci_command)) {
  printk("%s: can't read PCI_COMMAND.\n", card->name);
  deinit_card(card);
  return -1;
 }
 if (!(pci_command & PCI_COMMAND_IO)) {
  printk("%s: PCI_COMMAND: %04x (???)\n",
         card->name, pci_command);
  deinit_card(card);
  return (-1);
 }
 pci_command |= (PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER);
 if (pci_write_config_word(card->pcidev, PCI_COMMAND, pci_command)) {
  printk("%s: can't write PCI_COMMAND.\n", card->name);
  deinit_card(card);
  return -1;
 }





 writel(SAR_CFG_SWRST, SAR_REG_CFG);
 mdelay(1);
 writel(0, SAR_REG_CFG);

 IPRINTK("%s: Software resetted.\n", card->name);
 return 0;
}
