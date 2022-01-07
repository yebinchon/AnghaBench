
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_ac {int state; TYPE_1__* device; } ;
typedef int acpi_status ;
struct TYPE_2__ {int handle; } ;


 int ACPI_AC_STATUS_UNKNOWN ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_INFO ;
 int AE_OK ;
 int EINVAL ;
 int ENODEV ;
 int acpi_evaluate_integer (int ,char*,int *,int *) ;

__attribute__((used)) static int acpi_ac_get_state(struct acpi_ac *ac)
{
 acpi_status status = AE_OK;

 if (!ac)
  return -EINVAL;

 status = acpi_evaluate_integer(ac->device->handle, "_PSR", ((void*)0),
           &ac->state);
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status,
    "Error reading AC Adapter state"));
  ac->state = ACPI_AC_STATUS_UNKNOWN;
  return -ENODEV;
 }

 return 0;
}
