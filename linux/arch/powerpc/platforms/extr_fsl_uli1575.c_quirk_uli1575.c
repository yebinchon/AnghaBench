
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int ULI_8259_IRQ11 ;
 int ULI_8259_IRQ14 ;
 int ULI_8259_IRQ15 ;
 int ULI_PIRQA ;
 int ULI_PIRQB ;
 int ULI_PIRQD ;
 int ULI_PIRQE ;
 int ULI_PIRQF ;
 int ULI_PIRQG ;
 int is_quirk_valid () ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int* uli_pirq_to_irq ;

__attribute__((used)) static void quirk_uli1575(struct pci_dev *dev)
{
 int i;

 if (!is_quirk_valid())
  return;






 for (i = 0; i < 4; i++) {
  u8 val = uli_pirq_to_irq[i*2] | (uli_pirq_to_irq[i*2+1] << 4);
  pci_write_config_byte(dev, 0x48 + i, val);
 }


 pci_write_config_byte(dev, 0x86, ULI_PIRQD);


 pci_write_config_byte(dev, 0x87, ULI_PIRQA);


 pci_write_config_byte(dev, 0x88, ULI_PIRQB);


 pci_write_config_byte(dev, 0x89, ULI_PIRQF);


 pci_write_config_byte(dev, 0x8a, ULI_PIRQF);


 pci_write_config_byte(dev, 0x8b, ULI_PIRQF);


 pci_write_config_byte(dev, 0x8c, ULI_PIRQF);


 pci_write_config_byte(dev, 0x8d, ULI_PIRQE);


 pci_write_config_byte(dev, 0x8e, ULI_PIRQG);


 pci_write_config_byte(dev, 0x8f, ULI_PIRQG);


 pci_write_config_byte(dev, 0x74, ULI_8259_IRQ11);




 pci_write_config_byte(dev, 0x44, 0x30 | ULI_8259_IRQ14);
 pci_write_config_byte(dev, 0x75, ULI_8259_IRQ15);
}
