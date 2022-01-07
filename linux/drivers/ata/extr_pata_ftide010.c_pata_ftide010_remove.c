
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ftide010 {int pclk; int host; } ;
struct ata_host {struct ftide010* private_data; } ;


 int IS_ERR (int ) ;
 int ata_host_detach (int ) ;
 int clk_disable_unprepare (int ) ;
 struct ata_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pata_ftide010_remove(struct platform_device *pdev)
{
 struct ata_host *host = platform_get_drvdata(pdev);
 struct ftide010 *ftide = host->private_data;

 ata_host_detach(ftide->host);
 if (!IS_ERR(ftide->pclk))
  clk_disable_unprepare(ftide->pclk);

 return 0;
}
