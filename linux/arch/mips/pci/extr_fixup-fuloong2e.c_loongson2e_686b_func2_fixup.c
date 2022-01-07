
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_INTERRUPT_LINE ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;

__attribute__((used)) static void loongson2e_686b_func2_fixup(struct pci_dev *pdev)
{

 pci_write_config_byte(pdev, PCI_INTERRUPT_LINE, 10);
}
