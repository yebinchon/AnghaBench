
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

__attribute__((used)) static int acpi_dev_pm_explicit_get(struct acpi_device *device, int *state)
{
 unsigned long long psc;
 acpi_status status;

 status = acpi_evaluate_integer(device->handle, "_PSC", ((void*)0), &psc);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 *state = psc;
 return 0;
}
