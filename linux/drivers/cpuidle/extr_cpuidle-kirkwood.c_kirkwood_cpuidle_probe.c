
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int cpuidle_register (int *,int *) ;
 int ddr_operation_base ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int kirkwood_idle_driver ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int kirkwood_cpuidle_probe(struct platform_device *pdev)
{
 struct resource *res;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ddr_operation_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ddr_operation_base))
  return PTR_ERR(ddr_operation_base);

 return cpuidle_register(&kirkwood_idle_driver, ((void*)0));
}
