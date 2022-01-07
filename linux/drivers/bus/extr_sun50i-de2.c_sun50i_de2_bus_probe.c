
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int dev_err (TYPE_1__*,char*) ;
 int of_platform_populate (struct device_node*,int *,int *,TYPE_1__*) ;
 int sunxi_sram_claim (TYPE_1__*) ;

__attribute__((used)) static int sun50i_de2_bus_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 int ret;

 ret = sunxi_sram_claim(&pdev->dev);
 if (ret) {
  dev_err(&pdev->dev, "Error couldn't map SRAM to device\n");
  return ret;
 }

 of_platform_populate(np, ((void*)0), ((void*)0), &pdev->dev);

 return 0;
}
