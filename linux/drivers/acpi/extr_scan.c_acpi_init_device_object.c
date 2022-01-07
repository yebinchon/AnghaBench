
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int match_driver; int initialized; int enumeration_by_parent; } ;
struct TYPE_6__ {int ids; } ;
struct TYPE_4__ {int * ops; } ;
struct acpi_device {int device_type; int dep_unmet; int dev; TYPE_2__ flags; TYPE_3__ pnp; TYPE_1__ fwnode; int parent; int handle; } ;
typedef int acpi_handle ;


 int INIT_LIST_HEAD (int *) ;
 int acpi_bus_get_flags (struct acpi_device*) ;
 int acpi_bus_get_parent (int ) ;
 int acpi_device_clear_enumerated (struct acpi_device*) ;
 int acpi_device_enumeration_by_parent (struct acpi_device*) ;
 int acpi_device_fwnode_ops ;
 int acpi_device_get_busid (struct acpi_device*) ;
 int acpi_init_coherency (struct acpi_device*) ;
 int acpi_init_properties (struct acpi_device*) ;
 int acpi_set_device_status (struct acpi_device*,unsigned long long) ;
 int acpi_set_pnp_ids (int ,TYPE_3__*,int) ;
 int dev_set_uevent_suppress (int *,int) ;
 int device_initialize (int *) ;

void acpi_init_device_object(struct acpi_device *device, acpi_handle handle,
        int type, unsigned long long sta)
{
 INIT_LIST_HEAD(&device->pnp.ids);
 device->device_type = type;
 device->handle = handle;
 device->parent = acpi_bus_get_parent(handle);
 device->fwnode.ops = &acpi_device_fwnode_ops;
 acpi_set_device_status(device, sta);
 acpi_device_get_busid(device);
 acpi_set_pnp_ids(handle, &device->pnp, type);
 acpi_init_properties(device);
 acpi_bus_get_flags(device);
 device->flags.match_driver = 0;
 device->flags.initialized = 1;
 device->flags.enumeration_by_parent =
  acpi_device_enumeration_by_parent(device);
 acpi_device_clear_enumerated(device);
 device_initialize(&device->dev);
 dev_set_uevent_suppress(&device->dev, 1);
 acpi_init_coherency(device);

 device->dep_unmet = 1;
}
