
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int irq_managed; int irq; int class; int dev; int pin; } ;
struct acpi_prt_entry {int index; scalar_t__ link; } ;
typedef int link_desc ;


 int ACPI_ACTIVE_HIGH ;
 int ACPI_ACTIVE_LOW ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_IRQ_MODEL_GIC ;
 int ACPI_LEVEL_SENSITIVE ;
 int PCI_CLASS_STORAGE_IDE ;
 scalar_t__ acpi_irq_model ;
 scalar_t__ acpi_isa_register_gsi (struct pci_dev*) ;
 struct acpi_prt_entry* acpi_pci_irq_lookup (struct pci_dev*,int ) ;
 int acpi_pci_irq_valid (struct pci_dev*,int ) ;
 int acpi_pci_link_allocate_irq (scalar_t__,int,int*,int*,char**) ;
 int acpi_register_gsi (int *,int,int,int) ;
 int dev_dbg (int *,char*,int ,char*,int,char*,char*,int) ;
 int dev_warn (int *,char*,int ) ;
 int kfree (struct acpi_prt_entry*) ;
 int pci_name (struct pci_dev*) ;
 int pin_name (int ) ;
 int snprintf (char*,int,char*,char*) ;

int acpi_pci_irq_enable(struct pci_dev *dev)
{
 struct acpi_prt_entry *entry;
 int gsi;
 u8 pin;
 int triggering = ACPI_LEVEL_SENSITIVE;







 int polarity = acpi_irq_model == ACPI_IRQ_MODEL_GIC ?
          ACPI_ACTIVE_HIGH : ACPI_ACTIVE_LOW;
 char *link = ((void*)0);
 char link_desc[16];
 int rc;

 pin = dev->pin;
 if (!pin) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "No interrupt pin configured for device %s\n",
      pci_name(dev)));
  return 0;
 }

 if (dev->irq_managed && dev->irq > 0)
  return 0;

 entry = acpi_pci_irq_lookup(dev, pin);
 if (!entry) {




  if (dev->class >> 8 == PCI_CLASS_STORAGE_IDE &&
    (dev->class & 0x05) == 0)
   return 0;
 }

 if (entry) {
  if (entry->link)
   gsi = acpi_pci_link_allocate_irq(entry->link,
        entry->index,
        &triggering, &polarity,
        &link);
  else
   gsi = entry->index;
 } else
  gsi = -1;

 if (gsi < 0) {




  if (!acpi_pci_irq_valid(dev, pin)) {
   kfree(entry);
   return 0;
  }

  if (acpi_isa_register_gsi(dev))
   dev_warn(&dev->dev, "PCI INT %c: no GSI\n",
     pin_name(pin));

  kfree(entry);
  return 0;
 }

 rc = acpi_register_gsi(&dev->dev, gsi, triggering, polarity);
 if (rc < 0) {
  dev_warn(&dev->dev, "PCI INT %c: failed to register GSI\n",
    pin_name(pin));
  kfree(entry);
  return rc;
 }
 dev->irq = rc;
 dev->irq_managed = 1;

 if (link)
  snprintf(link_desc, sizeof(link_desc), " -> Link[%s]", link);
 else
  link_desc[0] = '\0';

 dev_dbg(&dev->dev, "PCI INT %c%s -> GSI %u (%s, %s) -> IRQ %d\n",
  pin_name(pin), link_desc, gsi,
  (triggering == ACPI_LEVEL_SENSITIVE) ? "level" : "edge",
  (polarity == ACPI_ACTIVE_LOW) ? "low" : "high", dev->irq);

 kfree(entry);
 return 0;
}
