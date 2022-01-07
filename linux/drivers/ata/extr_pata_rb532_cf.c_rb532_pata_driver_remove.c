
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ata_host {int dummy; } ;


 int ata_host_detach (struct ata_host*) ;
 struct ata_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int rb532_pata_driver_remove(struct platform_device *pdev)
{
 struct ata_host *ah = platform_get_drvdata(pdev);

 ata_host_detach(ah);

 return 0;
}
