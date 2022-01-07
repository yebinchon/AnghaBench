
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ata_port {scalar_t__ scsi_host; } ;
struct ata_host {int n_ports; struct ata_port** ports; } ;


 int ata_host_put (struct ata_host*) ;
 struct ata_host* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int scsi_host_put (scalar_t__) ;

__attribute__((used)) static void ata_devres_release(struct device *gendev, void *res)
{
 struct ata_host *host = dev_get_drvdata(gendev);
 int i;

 for (i = 0; i < host->n_ports; i++) {
  struct ata_port *ap = host->ports[i];

  if (!ap)
   continue;

  if (ap->scsi_host)
   scsi_host_put(ap->scsi_host);

 }

 dev_set_drvdata(gendev, ((void*)0));
 ata_host_put(host);
}
