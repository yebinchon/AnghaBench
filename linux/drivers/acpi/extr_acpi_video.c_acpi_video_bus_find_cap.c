
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int _DOS; int _DOD; int _ROM; int _GPD; int _SPD; int _VPO; } ;
struct acpi_video_bus {TYPE_2__ cap; TYPE_1__* device; } ;
struct TYPE_3__ {int handle; } ;


 scalar_t__ acpi_has_method (int ,char*) ;

__attribute__((used)) static void acpi_video_bus_find_cap(struct acpi_video_bus *video)
{
 if (acpi_has_method(video->device->handle, "_DOS"))
  video->cap._DOS = 1;
 if (acpi_has_method(video->device->handle, "_DOD"))
  video->cap._DOD = 1;
 if (acpi_has_method(video->device->handle, "_ROM"))
  video->cap._ROM = 1;
 if (acpi_has_method(video->device->handle, "_GPD"))
  video->cap._GPD = 1;
 if (acpi_has_method(video->device->handle, "_SPD"))
  video->cap._SPD = 1;
 if (acpi_has_method(video->device->handle, "_VPO"))
  video->cap._VPO = 1;
}
