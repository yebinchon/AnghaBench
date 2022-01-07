
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_pci_device {struct acpi_pci_device* next; } ;


 int ACPI_FREE (struct acpi_pci_device*) ;

__attribute__((used)) static void acpi_hw_delete_pci_list(struct acpi_pci_device *list_head)
{
 struct acpi_pci_device *next;
 struct acpi_pci_device *previous;

 next = list_head;
 while (next) {
  previous = next;
  next = previous->next;
  ACPI_FREE(previous);
 }
}
