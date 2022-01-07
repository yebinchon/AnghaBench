
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ of_node; } ;
typedef enum dev_dma_attr { ____Placeholder_dev_dma_attr } dev_dma_attr ;


 int ACPI_COMPANION (struct device*) ;
 int CONFIG_OF ;
 int DEV_DMA_COHERENT ;
 int DEV_DMA_NON_COHERENT ;
 int DEV_DMA_NOT_SUPPORTED ;
 scalar_t__ IS_ENABLED (int ) ;
 int acpi_get_dma_attr (int ) ;
 scalar_t__ of_dma_is_coherent (scalar_t__) ;

enum dev_dma_attr device_get_dma_attr(struct device *dev)
{
 enum dev_dma_attr attr = DEV_DMA_NOT_SUPPORTED;

 if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
  if (of_dma_is_coherent(dev->of_node))
   attr = DEV_DMA_COHERENT;
  else
   attr = DEV_DMA_NON_COHERENT;
 } else
  attr = acpi_get_dma_attr(ACPI_COMPANION(dev));

 return attr;
}
