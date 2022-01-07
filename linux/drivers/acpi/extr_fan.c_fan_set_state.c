
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;


 int ACPI_STATE_D0 ;
 int ACPI_STATE_D3_COLD ;
 int EINVAL ;
 int acpi_device_set_power (struct acpi_device*,int ) ;

__attribute__((used)) static int fan_set_state(struct acpi_device *device, unsigned long state)
{
 if (state != 0 && state != 1)
  return -EINVAL;

 return acpi_device_set_power(device,
         state ? ACPI_STATE_D0 : ACPI_STATE_D3_COLD);
}
