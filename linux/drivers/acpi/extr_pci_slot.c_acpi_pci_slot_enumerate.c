
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int bridge; } ;
typedef scalar_t__ acpi_handle ;


 scalar_t__ ACPI_HANDLE (int ) ;
 int ACPI_TYPE_DEVICE ;
 int acpi_walk_namespace (int ,scalar_t__,int,int ,int *,struct pci_bus*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int register_slot ;
 int slot_list_lock ;

void acpi_pci_slot_enumerate(struct pci_bus *bus)
{
 acpi_handle handle = ACPI_HANDLE(bus->bridge);

 if (handle) {
  mutex_lock(&slot_list_lock);
  acpi_walk_namespace(ACPI_TYPE_DEVICE, handle, 1,
        register_slot, ((void*)0), bus, ((void*)0));
  mutex_unlock(&slot_list_lock);
 }
}
