
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int HZ ;
 scalar_t__ PCIBIOS_SUCCESSFUL ;
 int PCI_BIST ;
 unsigned char PCI_BIST_CAPABLE ;
 unsigned char PCI_BIST_CODE_MASK ;
 unsigned char PCI_BIST_START ;
 int PCI_D0 ;
 int jiffies ;
 int pci_name (struct pci_dev*) ;
 scalar_t__ pci_read_config_byte (struct pci_dev*,int ,unsigned char*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pci_write_config_byte (struct pci_dev*,int ,unsigned char) ;
 int pr_cont (char*,...) ;
 int pr_info (char*,int ) ;
 scalar_t__ time_after (int,unsigned long) ;

__attribute__((used)) static void final_fixup(struct pci_dev *dev)
{
 unsigned char bist;


 if (pci_read_config_byte(dev, PCI_BIST, &bist) == PCIBIOS_SUCCESSFUL &&
     (bist & PCI_BIST_CAPABLE)) {
  unsigned long timeout;
  pci_set_power_state(dev, PCI_D0);
  pr_info("PCI: %s BIST...", pci_name(dev));
  pci_write_config_byte(dev, PCI_BIST, PCI_BIST_START);
  timeout = jiffies + HZ * 2;
  do {
   pci_read_config_byte(dev, PCI_BIST, &bist);
   if (time_after(jiffies, timeout))
    break;
  } while (bist & PCI_BIST_START);
  if (bist & (PCI_BIST_CODE_MASK | PCI_BIST_START))
   pr_cont("failed. (0x%x)\n", bist);
  else
   pr_cont("OK.\n");
 }
}
