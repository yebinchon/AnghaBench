
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;
typedef void* u16 ;
struct acpi_pci_id {void* bus; int function; int device; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_object_type ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HIWORD (int ) ;
 int ACPI_LODWORD (scalar_t__) ;
 int ACPI_LOWORD (int ) ;
 scalar_t__ ACPI_TYPE_DEVICE ;
 int AE_OK ;
 scalar_t__ FALSE ;
 int METHOD_NAME__ADR ;
 int PCI_CFG_HEADER_TYPE_REG ;
 int PCI_CFG_PRIMARY_BUS_NUMBER_REG ;
 int PCI_CFG_SECONDARY_BUS_NUMBER_REG ;
 scalar_t__ PCI_HEADER_TYPE_MASK ;
 scalar_t__ PCI_TYPE_BRIDGE ;
 scalar_t__ PCI_TYPE_CARDBUS_BRIDGE ;
 scalar_t__ TRUE ;
 int acpi_get_type (int ,scalar_t__*) ;
 int acpi_os_read_pci_configuration (struct acpi_pci_id*,int ,scalar_t__*,int) ;
 int acpi_ut_evaluate_numeric_object (int ,int ,scalar_t__*) ;

__attribute__((used)) static acpi_status
acpi_hw_get_pci_device_info(struct acpi_pci_id *pci_id,
       acpi_handle pci_device,
       u16 *bus_number, u8 *is_bridge)
{
 acpi_status status;
 acpi_object_type object_type;
 u64 return_value;
 u64 pci_value;



 status = acpi_get_type(pci_device, &object_type);
 if (ACPI_FAILURE(status)) {
  return (status);
 }

 if (object_type != ACPI_TYPE_DEVICE) {
  return (AE_OK);
 }



 status = acpi_ut_evaluate_numeric_object(METHOD_NAME__ADR,
       pci_device, &return_value);
 if (ACPI_FAILURE(status)) {
  return (AE_OK);
 }





 pci_id->device = ACPI_HIWORD(ACPI_LODWORD(return_value));
 pci_id->function = ACPI_LOWORD(ACPI_LODWORD(return_value));





 if (*is_bridge) {
  pci_id->bus = *bus_number;
 }






 *is_bridge = FALSE;
 status = acpi_os_read_pci_configuration(pci_id,
      PCI_CFG_HEADER_TYPE_REG,
      &pci_value, 8);
 if (ACPI_FAILURE(status)) {
  return (status);
 }



 pci_value &= PCI_HEADER_TYPE_MASK;

 if ((pci_value != PCI_TYPE_BRIDGE) &&
     (pci_value != PCI_TYPE_CARDBUS_BRIDGE)) {
  return (AE_OK);
 }



 status = acpi_os_read_pci_configuration(pci_id,
      PCI_CFG_PRIMARY_BUS_NUMBER_REG,
      &pci_value, 8);
 if (ACPI_FAILURE(status)) {
  return (status);
 }

 *is_bridge = TRUE;
 pci_id->bus = (u16)pci_value;



 status = acpi_os_read_pci_configuration(pci_id,
      PCI_CFG_SECONDARY_BUS_NUMBER_REG,
      &pci_value, 8);
 if (ACPI_FAILURE(status)) {
  return (status);
 }

 *bus_number = (u16)pci_value;
 return (AE_OK);
}
