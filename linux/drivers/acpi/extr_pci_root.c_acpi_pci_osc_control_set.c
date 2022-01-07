
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_pci_root {int osc_control_set; int osc_support_set; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 int AE_SUPPORT ;
 int AE_TYPE ;
 size_t OSC_CONTROL_DWORD ;
 int OSC_PCI_CONTROL_MASKS ;
 size_t OSC_QUERY_DWORD ;
 size_t OSC_SUPPORT_DWORD ;
 struct acpi_pci_root* acpi_pci_find_root (int ) ;
 int acpi_pci_query_osc (struct acpi_pci_root*,int,int*) ;
 int acpi_pci_run_osc (int ,int*,int*) ;
 int decode_osc_control (struct acpi_pci_root*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int osc_lock ;

acpi_status acpi_pci_osc_control_set(acpi_handle handle, u32 *mask, u32 req)
{
 struct acpi_pci_root *root;
 acpi_status status = AE_OK;
 u32 ctrl, capbuf[3];

 if (!mask)
  return AE_BAD_PARAMETER;

 ctrl = *mask & OSC_PCI_CONTROL_MASKS;
 if ((ctrl & req) != req)
  return AE_TYPE;

 root = acpi_pci_find_root(handle);
 if (!root)
  return AE_NOT_EXIST;

 mutex_lock(&osc_lock);

 *mask = ctrl | root->osc_control_set;

 if ((root->osc_control_set & ctrl) == ctrl)
  goto out;


 while (*mask) {
  status = acpi_pci_query_osc(root, root->osc_support_set, mask);
  if (ACPI_FAILURE(status))
   goto out;
  if (ctrl == *mask)
   break;
  decode_osc_control(root, "platform does not support",
       ctrl & ~(*mask));
  ctrl = *mask;
 }

 if ((ctrl & req) != req) {
  decode_osc_control(root, "not requesting control; platform does not support",
       req & ~(ctrl));
  status = AE_SUPPORT;
  goto out;
 }

 capbuf[OSC_QUERY_DWORD] = 0;
 capbuf[OSC_SUPPORT_DWORD] = root->osc_support_set;
 capbuf[OSC_CONTROL_DWORD] = ctrl;
 status = acpi_pci_run_osc(handle, capbuf, mask);
 if (ACPI_SUCCESS(status))
  root->osc_control_set = *mask;
out:
 mutex_unlock(&osc_lock);
 return status;
}
