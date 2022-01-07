
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device_id {int dummy; } ;
struct acpi_device {int dummy; } ;



__attribute__((used)) static int acpi_pnp_attach(struct acpi_device *adev,
      const struct acpi_device_id *id)
{
 return 1;
}
