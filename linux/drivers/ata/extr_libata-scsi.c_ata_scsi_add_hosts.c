
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_host_template {int dummy; } ;
struct ata_port {struct Scsi_Host* scsi_host; TYPE_1__* host; int tdev; int print_id; } ;
struct ata_host {int n_ports; struct ata_port** ports; } ;
struct Scsi_Host {int eh_noresume; int max_id; int max_lun; int max_channel; int max_cmd_len; int max_host_blocked; int unique_id; int transportt; int * hostdata; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int ata_scsi_transport_template ;
 int scsi_add_host_with_dma (struct Scsi_Host*,int *,int ) ;
 struct Scsi_Host* scsi_host_alloc (struct scsi_host_template*,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

int ata_scsi_add_hosts(struct ata_host *host, struct scsi_host_template *sht)
{
 int i, rc;

 for (i = 0; i < host->n_ports; i++) {
  struct ata_port *ap = host->ports[i];
  struct Scsi_Host *shost;

  rc = -ENOMEM;
  shost = scsi_host_alloc(sht, sizeof(struct ata_port *));
  if (!shost)
   goto err_alloc;

  shost->eh_noresume = 1;
  *(struct ata_port **)&shost->hostdata[0] = ap;
  ap->scsi_host = shost;

  shost->transportt = ata_scsi_transport_template;
  shost->unique_id = ap->print_id;
  shost->max_id = 16;
  shost->max_lun = 1;
  shost->max_channel = 1;
  shost->max_cmd_len = 32;






  shost->max_host_blocked = 1;

  rc = scsi_add_host_with_dma(ap->scsi_host,
      &ap->tdev, ap->host->dev);
  if (rc)
   goto err_add;
 }

 return 0;

 err_add:
 scsi_host_put(host->ports[i]->scsi_host);
 err_alloc:
 while (--i >= 0) {
  struct Scsi_Host *shost = host->ports[i]->scsi_host;

  scsi_remove_host(shost);
  scsi_host_put(shost);
 }
 return rc;
}
