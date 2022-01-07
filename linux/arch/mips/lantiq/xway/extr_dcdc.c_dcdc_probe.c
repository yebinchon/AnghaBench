
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int DCDC_BIAS_VREG1 ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dcdc_membase ;
 int dcdc_r8 (int ) ;
 int dev_info (int *,char*,int) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int dcdc_probe(struct platform_device *pdev)
{
 struct resource *res;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 dcdc_membase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(dcdc_membase))
  return PTR_ERR(dcdc_membase);

 dev_info(&pdev->dev, "Core Voltage : %d mV\n",
  dcdc_r8(DCDC_BIAS_VREG1) * 8);

 return 0;
}
