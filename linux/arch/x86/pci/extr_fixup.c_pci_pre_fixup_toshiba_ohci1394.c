
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int current_state; } ;


 int PCI_CACHE_LINE_SIZE ;
 int PCI_D3cold ;
 int dmi_check_system (int ) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int toshiba_line_size ;
 int toshiba_ohci1394_dmi_table ;

__attribute__((used)) static void pci_pre_fixup_toshiba_ohci1394(struct pci_dev *dev)
{
 if (!dmi_check_system(toshiba_ohci1394_dmi_table))
  return;

 dev->current_state = PCI_D3cold;
 pci_read_config_word(dev, PCI_CACHE_LINE_SIZE, &toshiba_line_size);
}
