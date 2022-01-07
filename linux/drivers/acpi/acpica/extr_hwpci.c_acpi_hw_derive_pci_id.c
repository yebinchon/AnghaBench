
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_pci_id {int dummy; } ;
struct acpi_pci_device {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_BAD_PARAMETER ;
 int acpi_hw_build_pci_list (int ,int ,struct acpi_pci_device**) ;
 int acpi_hw_delete_pci_list (struct acpi_pci_device*) ;
 int acpi_hw_process_pci_list (struct acpi_pci_id*,struct acpi_pci_device*) ;
 int hw_derive_pci_id ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_hw_derive_pci_id(struct acpi_pci_id *pci_id,
        acpi_handle root_pci_device, acpi_handle pci_region)
{
 acpi_status status;
 struct acpi_pci_device *list_head;

 ACPI_FUNCTION_TRACE(hw_derive_pci_id);

 if (!pci_id) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }



 status =
     acpi_hw_build_pci_list(root_pci_device, pci_region, &list_head);
 if (ACPI_SUCCESS(status)) {



  status = acpi_hw_process_pci_list(pci_id, list_head);



  acpi_hw_delete_pci_list(list_head);
 }

 return_ACPI_STATUS(status);
}
