
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_thermal {TYPE_1__* device; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;
struct TYPE_2__ {int handle; } ;


 int ACPI_THERMAL_MAX_ACTIVE ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

__attribute__((used)) static void acpi_thermal_aml_dependency_fix(struct acpi_thermal *tz)
{
 acpi_handle handle = tz->device->handle;
 unsigned long long value;
 int i;

 acpi_evaluate_integer(handle, "_CRT", ((void*)0), &value);
 acpi_evaluate_integer(handle, "_HOT", ((void*)0), &value);
 acpi_evaluate_integer(handle, "_PSV", ((void*)0), &value);
 for (i = 0; i < ACPI_THERMAL_MAX_ACTIVE; i++) {
  char name[5] = { '_', 'A', 'C', ('0' + i), '\0' };
  acpi_status status;

  status = acpi_evaluate_integer(handle, name, ((void*)0), &value);
  if (status == AE_NOT_FOUND)
   break;
 }
 acpi_evaluate_integer(handle, "_TMP", ((void*)0), &value);
}
