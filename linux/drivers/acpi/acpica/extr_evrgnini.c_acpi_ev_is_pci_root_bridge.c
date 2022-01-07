
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct acpi_pnp_device_id_list {size_t count; TYPE_1__* ids; int string; } ;
struct acpi_pnp_device_id {size_t count; TYPE_1__* ids; int string; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;
struct TYPE_2__ {int string; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (struct acpi_pnp_device_id_list*) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int acpi_ut_execute_CID (struct acpi_namespace_node*,struct acpi_pnp_device_id_list**) ;
 int acpi_ut_execute_HID (struct acpi_namespace_node*,struct acpi_pnp_device_id_list**) ;
 scalar_t__ acpi_ut_is_pci_root_bridge (int ) ;

u8 acpi_ev_is_pci_root_bridge(struct acpi_namespace_node *node)
{
 acpi_status status;
 struct acpi_pnp_device_id *hid;
 struct acpi_pnp_device_id_list *cid;
 u32 i;
 u8 match;



 status = acpi_ut_execute_HID(node, &hid);
 if (ACPI_FAILURE(status)) {
  return (FALSE);
 }

 match = acpi_ut_is_pci_root_bridge(hid->string);
 ACPI_FREE(hid);

 if (match) {
  return (TRUE);
 }



 status = acpi_ut_execute_CID(node, &cid);
 if (ACPI_FAILURE(status)) {
  return (FALSE);
 }



 for (i = 0; i < cid->count; i++) {
  if (acpi_ut_is_pci_root_bridge(cid->ids[i].string)) {
   ACPI_FREE(cid);
   return (TRUE);
  }
 }

 ACPI_FREE(cid);
 return (FALSE);
}
