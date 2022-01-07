
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_pci_device {scalar_t__ device; struct acpi_pci_device* next; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;


 struct acpi_pci_device* ACPI_ALLOCATE (int) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int acpi_get_parent (scalar_t__,scalar_t__*) ;
 int acpi_hw_delete_pci_list (struct acpi_pci_device*) ;

__attribute__((used)) static acpi_status
acpi_hw_build_pci_list(acpi_handle root_pci_device,
         acpi_handle pci_region,
         struct acpi_pci_device **return_list_head)
{
 acpi_handle current_device;
 acpi_handle parent_device;
 acpi_status status;
 struct acpi_pci_device *list_element;






 *return_list_head = ((void*)0);
 current_device = pci_region;
 while (1) {
  status = acpi_get_parent(current_device, &parent_device);
  if (ACPI_FAILURE(status)) {



   acpi_hw_delete_pci_list(*return_list_head);
   return (status);
  }



  if (parent_device == root_pci_device) {
   return (AE_OK);
  }

  list_element = ACPI_ALLOCATE(sizeof(struct acpi_pci_device));
  if (!list_element) {



   acpi_hw_delete_pci_list(*return_list_head);
   return (AE_NO_MEMORY);
  }



  list_element->next = *return_list_head;
  list_element->device = parent_device;
  *return_list_head = list_element;

  current_device = parent_device;
 }
}
