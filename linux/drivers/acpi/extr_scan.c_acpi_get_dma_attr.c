
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ coherent_dma; } ;
struct acpi_device {TYPE_1__ flags; } ;
typedef enum dev_dma_attr { ____Placeholder_dev_dma_attr } dev_dma_attr ;


 int DEV_DMA_COHERENT ;
 int DEV_DMA_NON_COHERENT ;
 int DEV_DMA_NOT_SUPPORTED ;
 int acpi_dma_supported (struct acpi_device*) ;

enum dev_dma_attr acpi_get_dma_attr(struct acpi_device *adev)
{
 if (!acpi_dma_supported(adev))
  return DEV_DMA_NOT_SUPPORTED;

 if (adev->flags.coherent_dma)
  return DEV_DMA_COHERENT;
 else
  return DEV_DMA_NON_COHERENT;
}
