
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_dev {int irq; } ;


 int IRQ_TYPE_LEVEL_LOW ;
 int PCI_INTERRUPT_LINE ;
 int PCI_INTERRUPT_PIN ;
 int irq_create_mapping (int *,scalar_t__) ;
 int irq_set_irq_type (int,int ) ;
 int of_irq_parse_and_map_pci (struct pci_dev*,int ,int ) ;
 int pci_name (struct pci_dev*) ;
 scalar_t__ pci_read_config_byte (struct pci_dev*,int ,scalar_t__*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int pci_read_irq_line(struct pci_dev *pci_dev)
{
 int virq;

 pr_debug("PCI: Try to map irq for %s...\n", pci_name(pci_dev));


 virq = of_irq_parse_and_map_pci(pci_dev, 0, 0);
 if (virq <= 0) {
  u8 line, pin;
  if (pci_read_config_byte(pci_dev, PCI_INTERRUPT_PIN, &pin))
   return -1;
  if (pin == 0)
   return -1;
  if (pci_read_config_byte(pci_dev, PCI_INTERRUPT_LINE, &line) ||
      line == 0xff || line == 0) {
   return -1;
  }
  pr_debug(" No map ! Using line %d (pin %d) from PCI config\n",
    line, pin);

  virq = irq_create_mapping(((void*)0), line);
  if (virq)
   irq_set_irq_type(virq, IRQ_TYPE_LEVEL_LOW);
 }

 if (!virq) {
  pr_debug(" Failed to map !\n");
  return -1;
 }

 pr_debug(" Mapped to linux irq %d\n", virq);

 pci_dev->irq = virq;

 return 0;
}
