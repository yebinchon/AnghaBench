
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct acpi_pci_root {int osc_support_set; int osc_control_set; TYPE_1__* device; } ;
typedef int acpi_status ;
struct TYPE_2__ {int handle; } ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 size_t OSC_CONTROL_DWORD ;
 int OSC_PCI_CONTROL_MASKS ;
 int OSC_PCI_SUPPORT_MASKS ;
 size_t OSC_QUERY_DWORD ;
 int OSC_QUERY_ENABLE ;
 size_t OSC_SUPPORT_DWORD ;
 int acpi_pci_run_osc (int ,int*,int*) ;

__attribute__((used)) static acpi_status acpi_pci_query_osc(struct acpi_pci_root *root,
     u32 support,
     u32 *control)
{
 acpi_status status;
 u32 result, capbuf[3];

 support &= OSC_PCI_SUPPORT_MASKS;
 support |= root->osc_support_set;

 capbuf[OSC_QUERY_DWORD] = OSC_QUERY_ENABLE;
 capbuf[OSC_SUPPORT_DWORD] = support;
 if (control) {
  *control &= OSC_PCI_CONTROL_MASKS;
  capbuf[OSC_CONTROL_DWORD] = *control | root->osc_control_set;
 } else {

  capbuf[OSC_CONTROL_DWORD] = root->osc_control_set;
 }

 status = acpi_pci_run_osc(root->device->handle, capbuf, &result);
 if (ACPI_SUCCESS(status)) {
  root->osc_support_set = support;
  if (control)
   *control = result;
 }
 return status;
}
