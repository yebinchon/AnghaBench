
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_pci_id {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int AE_SUPPORT ;

__attribute__((used)) static inline acpi_status
acpi_hw_derive_pci_id(struct acpi_pci_id *pci_id, acpi_handle root_pci_device,
        acpi_handle pci_region)
{
 return AE_SUPPORT;
}
