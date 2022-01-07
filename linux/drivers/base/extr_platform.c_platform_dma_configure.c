
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int fwnode; scalar_t__ of_node; } ;
typedef enum dev_dma_attr { ____Placeholder_dev_dma_attr } dev_dma_attr ;


 int acpi_dma_configure (struct device*,int) ;
 int acpi_get_dma_attr (int ) ;
 scalar_t__ has_acpi_companion (struct device*) ;
 int of_dma_configure (struct device*,scalar_t__,int) ;
 int to_acpi_device_node (int ) ;

int platform_dma_configure(struct device *dev)
{
 enum dev_dma_attr attr;
 int ret = 0;

 if (dev->of_node) {
  ret = of_dma_configure(dev, dev->of_node, 1);
 } else if (has_acpi_companion(dev)) {
  attr = acpi_get_dma_attr(to_acpi_device_node(dev->fwnode));
  ret = acpi_dma_configure(dev, attr);
 }

 return ret;
}
