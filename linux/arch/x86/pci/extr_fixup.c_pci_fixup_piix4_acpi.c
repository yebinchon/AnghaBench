
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;



__attribute__((used)) static void pci_fixup_piix4_acpi(struct pci_dev *d)
{



 d->irq = 9;
}
