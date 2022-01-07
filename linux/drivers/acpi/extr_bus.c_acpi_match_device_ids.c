
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device_id {int dummy; } ;
struct acpi_device {int dummy; } ;


 int ENOENT ;
 scalar_t__ __acpi_match_device (struct acpi_device*,struct acpi_device_id const*,int *,int *,int *) ;

int acpi_match_device_ids(struct acpi_device *device,
     const struct acpi_device_id *ids)
{
 return __acpi_match_device(device, ids, ((void*)0), ((void*)0), ((void*)0)) ? 0 : -ENOENT;
}
