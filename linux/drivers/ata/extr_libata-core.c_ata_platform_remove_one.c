
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ata_host {int dummy; } ;


 int ata_host_detach (struct ata_host*) ;
 struct ata_host* platform_get_drvdata (struct platform_device*) ;

int ata_platform_remove_one(struct platform_device *pdev)
{
 struct ata_host *host = platform_get_drvdata(pdev);

 ata_host_detach(host);

 return 0;
}
