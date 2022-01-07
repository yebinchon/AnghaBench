
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct acpi_device {int hp; } ;
struct TYPE_2__ {int ap; } ;


 int ata_acpi_handle_hotplug (int ,int *,int ) ;
 TYPE_1__ ata_hotplug_data (int ) ;

__attribute__((used)) static int ata_acpi_ap_notify_dock(struct acpi_device *adev, u32 event)
{
 ata_acpi_handle_hotplug(ata_hotplug_data(adev->hp).ap, ((void*)0), event);
 return 0;
}
