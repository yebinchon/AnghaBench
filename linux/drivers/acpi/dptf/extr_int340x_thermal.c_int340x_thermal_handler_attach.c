
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device_id {scalar_t__ driver_data; } ;
struct acpi_device {int dummy; } ;


 int CONFIG_INT340X_THERMAL ;
 int CONFIG_INTEL_SOC_DTS_THERMAL ;
 scalar_t__ INT3401_DEVICE ;
 scalar_t__ IS_ENABLED (int ) ;
 int acpi_create_platform_device (struct acpi_device*,int *) ;

__attribute__((used)) static int int340x_thermal_handler_attach(struct acpi_device *adev,
     const struct acpi_device_id *id)
{
 if (IS_ENABLED(CONFIG_INT340X_THERMAL))
  acpi_create_platform_device(adev, ((void*)0));

 else if (IS_ENABLED(CONFIG_INTEL_SOC_DTS_THERMAL) &&
   id->driver_data == INT3401_DEVICE)
  acpi_create_platform_device(adev, ((void*)0));
 return 1;
}
