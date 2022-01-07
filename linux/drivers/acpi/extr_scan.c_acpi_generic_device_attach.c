
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_device_id {int dummy; } ;
struct TYPE_2__ {scalar_t__ of_compatible; } ;
struct acpi_device {TYPE_1__ data; } ;


 int acpi_default_enumeration (struct acpi_device*) ;

__attribute__((used)) static int acpi_generic_device_attach(struct acpi_device *adev,
          const struct acpi_device_id *not_used)
{




 if (adev->data.of_compatible)
  acpi_default_enumeration(adev);

 return 1;
}
