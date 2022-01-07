
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct acpi_pci_id {int function; int device; int bus; int segment; } ;
struct acpi_pci_device {struct acpi_pci_device* next; int device; } ;
typedef int acpi_status ;


 int ACPI_DB_OPREGION ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int AE_OK ;
 int TRUE ;
 int acpi_hw_get_pci_device_info (struct acpi_pci_id*,int ,int *,int *) ;
 int hw_process_pci_list ;

__attribute__((used)) static acpi_status
acpi_hw_process_pci_list(struct acpi_pci_id *pci_id,
    struct acpi_pci_device *list_head)
{
 acpi_status status = AE_OK;
 struct acpi_pci_device *info;
 u16 bus_number;
 u8 is_bridge = TRUE;

 ACPI_FUNCTION_NAME(hw_process_pci_list);

 ACPI_DEBUG_PRINT((ACPI_DB_OPREGION,
     "Input PciId:  Seg %4.4X Bus %4.4X Dev %4.4X Func %4.4X\n",
     pci_id->segment, pci_id->bus, pci_id->device,
     pci_id->function));

 bus_number = pci_id->bus;
 info = list_head;
 while (info) {
  status = acpi_hw_get_pci_device_info(pci_id, info->device,
           &bus_number, &is_bridge);
  if (ACPI_FAILURE(status)) {
   return (status);
  }

  info = info->next;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_OPREGION,
     "Output PciId: Seg %4.4X Bus %4.4X Dev %4.4X Func %4.4X "
     "Status %X BusNumber %X IsBridge %X\n",
     pci_id->segment, pci_id->bus, pci_id->device,
     pci_id->function, status, bus_number, is_bridge));

 return (AE_OK);
}
