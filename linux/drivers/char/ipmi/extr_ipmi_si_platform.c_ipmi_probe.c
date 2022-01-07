
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 scalar_t__ acpi_ipmi_probe (struct platform_device*) ;
 scalar_t__ of_ipmi_probe (struct platform_device*) ;
 int platform_ipmi_probe (struct platform_device*) ;

__attribute__((used)) static int ipmi_probe(struct platform_device *pdev)
{
 if (pdev->dev.of_node && of_ipmi_probe(pdev) == 0)
  return 0;

 if (acpi_ipmi_probe(pdev) == 0)
  return 0;

 return platform_ipmi_probe(pdev);
}
