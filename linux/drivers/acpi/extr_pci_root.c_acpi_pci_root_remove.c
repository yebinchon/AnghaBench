
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_pci_root {TYPE_1__* bus; } ;
struct acpi_device {int handle; } ;
struct TYPE_3__ {int bridge; } ;


 int WARN_ON (int ) ;
 struct acpi_pci_root* acpi_driver_data (struct acpi_device*) ;
 int acpi_ioapic_remove (struct acpi_pci_root*) ;
 int device_set_wakeup_capable (int ,int) ;
 int dmar_device_remove (int ) ;
 int kfree (struct acpi_pci_root*) ;
 int pci_acpi_remove_bus_pm_notifier (struct acpi_device*) ;
 int pci_ioapic_remove (struct acpi_pci_root*) ;
 int pci_lock_rescan_remove () ;
 int pci_remove_root_bus (TYPE_1__*) ;
 int pci_stop_root_bus (TYPE_1__*) ;
 int pci_unlock_rescan_remove () ;

__attribute__((used)) static void acpi_pci_root_remove(struct acpi_device *device)
{
 struct acpi_pci_root *root = acpi_driver_data(device);

 pci_lock_rescan_remove();

 pci_stop_root_bus(root->bus);

 pci_ioapic_remove(root);
 device_set_wakeup_capable(root->bus->bridge, 0);
 pci_acpi_remove_bus_pm_notifier(device);

 pci_remove_root_bus(root->bus);
 WARN_ON(acpi_ioapic_remove(root));

 dmar_device_remove(device->handle);

 pci_unlock_rescan_remove();

 kfree(root);
}
