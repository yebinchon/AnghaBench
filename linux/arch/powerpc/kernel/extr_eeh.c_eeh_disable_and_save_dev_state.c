
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct eeh_dev {int dummy; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 int PCI_D0 ;
 struct pci_dev* eeh_dev_to_pci_dev (struct eeh_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void eeh_disable_and_save_dev_state(struct eeh_dev *edev,
         void *userdata)
{
 struct pci_dev *pdev = eeh_dev_to_pci_dev(edev);
 struct pci_dev *dev = userdata;





 if (!pdev || pdev == dev)
  return;


 pci_set_power_state(pdev, PCI_D0);


 pci_save_state(pdev);





 pci_write_config_word(pdev, PCI_COMMAND, PCI_COMMAND_INTX_DISABLE);
}
