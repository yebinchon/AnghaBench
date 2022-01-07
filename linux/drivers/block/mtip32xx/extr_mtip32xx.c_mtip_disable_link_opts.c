
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int device; int vendor; } ;
struct driver_data {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int PCI_CAP_ID_EXP ;
 scalar_t__ PCI_EXP_DEVCTL ;
 unsigned short PCI_EXP_DEVCTL_NOSNOOP_EN ;
 unsigned short PCI_EXP_DEVCTL_RELAX_EN ;
 int dev_info (int *,char*,int ,int ) ;
 int pci_find_capability (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,unsigned short*) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,unsigned short) ;

__attribute__((used)) static void mtip_disable_link_opts(struct driver_data *dd, struct pci_dev *pdev)
{
 int pos;
 unsigned short pcie_dev_ctrl;

 pos = pci_find_capability(pdev, PCI_CAP_ID_EXP);
 if (pos) {
  pci_read_config_word(pdev,
   pos + PCI_EXP_DEVCTL,
   &pcie_dev_ctrl);
  if (pcie_dev_ctrl & (1 << 11) ||
      pcie_dev_ctrl & (1 << 4)) {
   dev_info(&dd->pdev->dev,
    "Disabling ERO/No-Snoop on bridge device %04x:%04x\n",
     pdev->vendor, pdev->device);
   pcie_dev_ctrl &= ~(PCI_EXP_DEVCTL_NOSNOOP_EN |
      PCI_EXP_DEVCTL_RELAX_EN);
   pci_write_config_word(pdev,
    pos + PCI_EXP_DEVCTL,
    pcie_dev_ctrl);
  }
 }
}
