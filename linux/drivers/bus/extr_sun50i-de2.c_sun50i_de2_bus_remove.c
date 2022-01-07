
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int sunxi_sram_release (int *) ;

__attribute__((used)) static int sun50i_de2_bus_remove(struct platform_device *pdev)
{
 sunxi_sram_release(&pdev->dev);
 return 0;
}
