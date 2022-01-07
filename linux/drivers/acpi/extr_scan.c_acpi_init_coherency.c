
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cca_seen; unsigned long long coherent_dma; } ;
struct acpi_device {TYPE_1__ flags; int handle; struct acpi_device* parent; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int CONFIG_ACPI_CCA_REQUIRED ;
 int IS_ENABLED (int ) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_handle_debug (int ,char*) ;

__attribute__((used)) static void acpi_init_coherency(struct acpi_device *adev)
{
 unsigned long long cca = 0;
 acpi_status status;
 struct acpi_device *parent = adev->parent;

 if (parent && parent->flags.cca_seen) {




  adev->flags.cca_seen = 1;
  cca = parent->flags.coherent_dma;
 } else {
  status = acpi_evaluate_integer(adev->handle, "_CCA",
            ((void*)0), &cca);
  if (ACPI_SUCCESS(status))
   adev->flags.cca_seen = 1;
  else if (!IS_ENABLED(CONFIG_ACPI_CCA_REQUIRED))





   cca = 1;
  else
   acpi_handle_debug(adev->handle,
       "ACPI device is missing _CCA.\n");
 }

 adev->flags.coherent_dma = cca;
}
