
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb153_cf_info {int gpio_line; } ;
struct platform_device {int dummy; } ;
struct ata_host {struct rb153_cf_info* private_data; } ;


 int ata_host_detach (struct ata_host*) ;
 int gpio_free (int ) ;
 struct ata_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int rb153_pata_driver_remove(struct platform_device *pdev)
{
 struct ata_host *ah = platform_get_drvdata(pdev);
 struct rb153_cf_info *info = ah->private_data;

 ata_host_detach(ah);
 gpio_free(info->gpio_line);

 return 0;
}
