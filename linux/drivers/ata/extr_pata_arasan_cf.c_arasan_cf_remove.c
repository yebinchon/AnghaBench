
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct ata_host {TYPE_1__** ports; } ;
struct arasan_cf_dev {int dummy; } ;
struct TYPE_2__ {struct arasan_cf_dev* private_data; } ;


 int ata_host_detach (struct ata_host*) ;
 int cf_exit (struct arasan_cf_dev*) ;
 struct ata_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int arasan_cf_remove(struct platform_device *pdev)
{
 struct ata_host *host = platform_get_drvdata(pdev);
 struct arasan_cf_dev *acdev = host->ports[0]->private_data;

 ata_host_detach(host);
 cf_exit(acdev);

 return 0;
}
