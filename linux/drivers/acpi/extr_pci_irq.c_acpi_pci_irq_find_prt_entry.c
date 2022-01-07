
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* bus; } ;
struct acpi_prt_entry {int dummy; } ;
struct acpi_pci_routing_table {scalar_t__ length; } ;
struct acpi_buffer {struct acpi_pci_routing_table* pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
typedef int * acpi_handle ;
struct TYPE_2__ {scalar_t__ bridge; } ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int * ACPI_HANDLE (scalar_t__) ;
 int ENODEV ;
 int acpi_get_irq_routing_table (int *,struct acpi_buffer*) ;
 int acpi_pci_irq_check_entry (int *,struct pci_dev*,int,struct acpi_pci_routing_table*,struct acpi_prt_entry**) ;
 int kfree (struct acpi_pci_routing_table*) ;

__attribute__((used)) static int acpi_pci_irq_find_prt_entry(struct pci_dev *dev,
     int pin, struct acpi_prt_entry **entry_ptr)
{
 acpi_status status;
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 struct acpi_pci_routing_table *entry;
 acpi_handle handle = ((void*)0);

 if (dev->bus->bridge)
  handle = ACPI_HANDLE(dev->bus->bridge);

 if (!handle)
  return -ENODEV;


 status = acpi_get_irq_routing_table(handle, &buffer);
 if (ACPI_FAILURE(status)) {
  kfree(buffer.pointer);
  return -ENODEV;
 }

 entry = buffer.pointer;
 while (entry && (entry->length > 0)) {
  if (!acpi_pci_irq_check_entry(handle, dev, pin,
       entry, entry_ptr))
   break;
  entry = (struct acpi_pci_routing_table *)
      ((unsigned long)entry + entry->length);
 }

 kfree(buffer.pointer);
 return 0;
}
