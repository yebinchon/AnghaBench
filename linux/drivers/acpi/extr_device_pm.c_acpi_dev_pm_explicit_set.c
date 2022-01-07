
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* states; } ;
struct acpi_device {int handle; TYPE_3__ power; } ;
typedef int acpi_status ;
struct TYPE_4__ {scalar_t__ explicit_set; } ;
struct TYPE_5__ {TYPE_1__ flags; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int acpi_evaluate_object (int ,char*,int *,int *) ;

__attribute__((used)) static int acpi_dev_pm_explicit_set(struct acpi_device *adev, int state)
{
 if (adev->power.states[state].flags.explicit_set) {
  char method[5] = { '_', 'P', 'S', '0' + state, '\0' };
  acpi_status status;

  status = acpi_evaluate_object(adev->handle, method, ((void*)0), ((void*)0));
  if (ACPI_FAILURE(status))
   return -ENODEV;
 }
 return 0;
}
