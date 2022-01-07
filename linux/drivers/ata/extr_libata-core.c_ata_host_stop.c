
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct ata_port {TYPE_1__* ops; } ;
struct ata_host {int flags; int n_ports; TYPE_2__* ops; struct ata_port** ports; } ;
struct TYPE_4__ {int (* host_stop ) (struct ata_host*) ;} ;
struct TYPE_3__ {int (* port_stop ) (struct ata_port*) ;} ;


 int ATA_HOST_STARTED ;
 int WARN_ON (int) ;
 struct ata_host* dev_get_drvdata (struct device*) ;
 int stub1 (struct ata_port*) ;
 int stub2 (struct ata_host*) ;

__attribute__((used)) static void ata_host_stop(struct device *gendev, void *res)
{
 struct ata_host *host = dev_get_drvdata(gendev);
 int i;

 WARN_ON(!(host->flags & ATA_HOST_STARTED));

 for (i = 0; i < host->n_ports; i++) {
  struct ata_port *ap = host->ports[i];

  if (ap->ops->port_stop)
   ap->ops->port_stop(ap);
 }

 if (host->ops->host_stop)
  host->ops->host_stop(host);
}
