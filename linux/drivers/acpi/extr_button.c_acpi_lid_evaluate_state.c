
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

__attribute__((used)) static int acpi_lid_evaluate_state(struct acpi_device *device)
{
 unsigned long long lid_state;
 acpi_status status;

 status = acpi_evaluate_integer(device->handle, "_LID", ((void*)0), &lid_state);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 return lid_state ? 1 : 0;
}
