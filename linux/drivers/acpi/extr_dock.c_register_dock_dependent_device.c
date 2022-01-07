
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_station {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef int acpi_handle ;


 int add_dock_dependent_device (struct dock_station*,struct acpi_device*) ;
 int find_dock_dependent_device (struct dock_station*,struct acpi_device*) ;
 struct dock_station* find_dock_station (int ) ;

void register_dock_dependent_device(struct acpi_device *adev,
        acpi_handle dshandle)
{
 struct dock_station *ds = find_dock_station(dshandle);

 if (ds && !find_dock_dependent_device(ds, adev))
  add_dock_dependent_device(ds, adev);
}
