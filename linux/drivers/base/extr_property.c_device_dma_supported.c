
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ of_node; } ;


 int ACPI_COMPANION (struct device*) ;
 int CONFIG_OF ;
 scalar_t__ IS_ENABLED (int ) ;
 int acpi_dma_supported (int ) ;

bool device_dma_supported(struct device *dev)
{




 if (IS_ENABLED(CONFIG_OF) && dev->of_node)
  return 1;

 return acpi_dma_supported(ACPI_COMPANION(dev));
}
