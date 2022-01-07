
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cca_seen; } ;
struct acpi_device {TYPE_1__ flags; } ;


 int CONFIG_ACPI_CCA_REQUIRED ;
 int IS_ENABLED (int ) ;

bool acpi_dma_supported(struct acpi_device *adev)
{
 if (!adev)
  return 0;

 if (adev->flags.cca_seen)
  return 1;






 if (!IS_ENABLED(CONFIG_ACPI_CCA_REQUIRED))
  return 1;

 return 0;
}
