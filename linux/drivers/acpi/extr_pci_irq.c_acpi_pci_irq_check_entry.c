
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_2__* bus; } ;
struct TYPE_4__ {int segment; int bus; int device; } ;
struct acpi_prt_entry {int pin; int index; TYPE_1__ id; int link; } ;
struct acpi_pci_routing_table {int address; int pin; scalar_t__* source; int source_index; } ;
typedef int acpi_handle ;
struct TYPE_5__ {int number; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCI_SLOT (int ) ;
 int acpi_get_handle (int ,scalar_t__*,int *) ;
 int do_prt_fixups (struct acpi_prt_entry*,struct acpi_pci_routing_table*) ;
 struct acpi_prt_entry* kzalloc (int,int ) ;
 scalar_t__ pci_ari_enabled (TYPE_2__*) ;
 int pci_domain_nr (TYPE_2__*) ;
 int pin_name (int) ;

__attribute__((used)) static int acpi_pci_irq_check_entry(acpi_handle handle, struct pci_dev *dev,
      int pin, struct acpi_pci_routing_table *prt,
      struct acpi_prt_entry **entry_ptr)
{
 int segment = pci_domain_nr(dev->bus);
 int bus = dev->bus->number;
 int device = pci_ari_enabled(dev->bus) ? 0 : PCI_SLOT(dev->devfn);
 struct acpi_prt_entry *entry;

 if (((prt->address >> 16) & 0xffff) != device ||
     prt->pin + 1 != pin)
  return -ENODEV;

 entry = kzalloc(sizeof(struct acpi_prt_entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;






 entry->id.segment = segment;
 entry->id.bus = bus;
 entry->id.device = (prt->address >> 16) & 0xFFFF;
 entry->pin = prt->pin + 1;

 do_prt_fixups(entry, prt);

 entry->index = prt->source_index;
 if (prt->source[0])
  acpi_get_handle(handle, prt->source, &entry->link);
 ACPI_DEBUG_PRINT_RAW((ACPI_DB_INFO,
         "      %04x:%02x:%02x[%c] -> %s[%d]\n",
         entry->id.segment, entry->id.bus,
         entry->id.device, pin_name(entry->pin),
         prt->source, entry->index));

 *entry_ptr = entry;

 return 0;
}
