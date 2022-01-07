
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ runtime_status; scalar_t__ is_prepared; } ;
struct TYPE_4__ {TYPE_1__ power; } ;
struct pci_dev {scalar_t__ irq; scalar_t__ irq_managed; TYPE_2__ dev; int pin; } ;
struct acpi_prt_entry {int index; scalar_t__ link; } ;


 scalar_t__ RPM_SUSPENDING ;
 struct acpi_prt_entry* acpi_pci_irq_lookup (struct pci_dev*,int ) ;
 int acpi_pci_link_free_irq (scalar_t__) ;
 int acpi_unregister_gsi (int) ;
 int dev_dbg (TYPE_2__*,char*,int ) ;
 int kfree (struct acpi_prt_entry*) ;
 int pin_name (int ) ;

void acpi_pci_irq_disable(struct pci_dev *dev)
{
 struct acpi_prt_entry *entry;
 int gsi;
 u8 pin;

 pin = dev->pin;
 if (!pin || !dev->irq_managed || dev->irq <= 0)
  return;


 if (dev->dev.power.is_prepared)
  return;





 entry = acpi_pci_irq_lookup(dev, pin);
 if (!entry)
  return;

 if (entry->link)
  gsi = acpi_pci_link_free_irq(entry->link);
 else
  gsi = entry->index;

 kfree(entry);






 dev_dbg(&dev->dev, "PCI INT %c disabled\n", pin_name(pin));
 if (gsi >= 0) {
  acpi_unregister_gsi(gsi);
  dev->irq_managed = 0;
 }
}
