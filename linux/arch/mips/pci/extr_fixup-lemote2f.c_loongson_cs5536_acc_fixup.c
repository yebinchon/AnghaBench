
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_ACC_INT_REG ;
 int PCI_LATENCY_TIMER ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;

__attribute__((used)) static void loongson_cs5536_acc_fixup(struct pci_dev *pdev)
{

 pci_write_config_dword(pdev, PCI_ACC_INT_REG, 1);

 pci_write_config_byte(pdev, PCI_LATENCY_TIMER, 0xc0);
}
