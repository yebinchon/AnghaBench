
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int * handler; } ;


 int acpi_pnp_handler ;
 scalar_t__ is_cmos_rtc_device (struct acpi_device*) ;

bool acpi_is_pnp_device(struct acpi_device *adev)
{
 return adev->handler == &acpi_pnp_handler || is_cmos_rtc_device(adev);
}
