
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int clk_enable (scalar_t__) ;
 scalar_t__ devm_clk_get (int *,int *) ;
 scalar_t__ ep93xx_ohci_host_clock ;

__attribute__((used)) static int ep93xx_ohci_power_on(struct platform_device *pdev)
{
 if (!ep93xx_ohci_host_clock) {
  ep93xx_ohci_host_clock = devm_clk_get(&pdev->dev, ((void*)0));
  if (IS_ERR(ep93xx_ohci_host_clock))
   return PTR_ERR(ep93xx_ohci_host_clock);
 }

 return clk_enable(ep93xx_ohci_host_clock);
}
