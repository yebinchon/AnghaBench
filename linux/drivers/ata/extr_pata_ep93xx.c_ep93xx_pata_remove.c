
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ep93xx_pata_data {int ide_base; } ;
struct ata_host {struct ep93xx_pata_data* private_data; } ;


 int ata_host_detach (struct ata_host*) ;
 int ep93xx_ide_release_gpio (struct platform_device*) ;
 int ep93xx_pata_clear_regs (int ) ;
 int ep93xx_pata_release_dma (struct ep93xx_pata_data*) ;
 struct ata_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ep93xx_pata_remove(struct platform_device *pdev)
{
 struct ata_host *host = platform_get_drvdata(pdev);
 struct ep93xx_pata_data *drv_data = host->private_data;

 ata_host_detach(host);
 ep93xx_pata_release_dma(drv_data);
 ep93xx_pata_clear_regs(drv_data->ide_base);
 ep93xx_ide_release_gpio(pdev);
 return 0;
}
