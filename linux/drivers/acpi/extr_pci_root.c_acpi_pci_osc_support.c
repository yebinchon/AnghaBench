
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_pci_root {int dummy; } ;
typedef int acpi_status ;


 int acpi_pci_query_osc (struct acpi_pci_root*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int osc_lock ;

__attribute__((used)) static acpi_status acpi_pci_osc_support(struct acpi_pci_root *root, u32 flags)
{
 acpi_status status;

 mutex_lock(&osc_lock);
 status = acpi_pci_query_osc(root, flags, ((void*)0));
 mutex_unlock(&osc_lock);
 return status;
}
