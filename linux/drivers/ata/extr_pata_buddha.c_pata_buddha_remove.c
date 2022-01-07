
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zorro_dev {int dev; } ;
struct ata_host {int dummy; } ;


 int ata_host_detach (struct ata_host*) ;
 struct ata_host* dev_get_drvdata (int *) ;

__attribute__((used)) static void pata_buddha_remove(struct zorro_dev *z)
{
 struct ata_host *host = dev_get_drvdata(&z->dev);

 ata_host_detach(host);
}
