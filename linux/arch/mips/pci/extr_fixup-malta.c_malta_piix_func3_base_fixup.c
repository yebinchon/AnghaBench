
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PIIX4_FUNC3_PMBA ;
 int PIIX4_FUNC3_PMREGMISC ;
 int PIIX4_FUNC3_PMREGMISC_EN ;
 int pci_write_config_byte (struct pci_dev*,int ,int ) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static void malta_piix_func3_base_fixup(struct pci_dev *dev)
{

 pci_write_config_word(dev, PIIX4_FUNC3_PMBA, 0x1000);


 pci_write_config_byte(dev, PIIX4_FUNC3_PMREGMISC,
         PIIX4_FUNC3_PMREGMISC_EN);
}
