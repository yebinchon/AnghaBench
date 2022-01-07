
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ata_device {TYPE_1__* link; } ;
struct acpi_device {int hp; } ;
struct TYPE_4__ {struct ata_device* dev; } ;
struct TYPE_3__ {int ap; } ;


 int ata_acpi_uevent (int ,struct ata_device*,int ) ;
 TYPE_2__ ata_hotplug_data (int ) ;

__attribute__((used)) static void ata_acpi_dev_uevent(struct acpi_device *adev, u32 event)
{
 struct ata_device *dev = ata_hotplug_data(adev->hp).dev;
 ata_acpi_uevent(dev->link->ap, dev, event);
}
