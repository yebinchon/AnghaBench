
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_host_template {int can_queue; } ;
struct TYPE_4__ {int desc; } ;
struct TYPE_3__ {TYPE_2__ eh_info; } ;
struct ata_port {int local_port_no; scalar_t__ cbl; int flags; TYPE_1__ link; int udma_mask; int mwdma_mask; int pio_mask; TYPE_1__* slave_link; int print_id; } ;
struct ata_host {int flags; int n_ports; struct ata_port** ports; int dev; int n_tags; } ;


 scalar_t__ ATA_CBL_NONE ;
 scalar_t__ ATA_CBL_SATA ;
 int ATA_FLAG_SATA ;
 int ATA_HOST_STARTED ;
 int ATA_MAX_QUEUE ;
 int EINVAL ;
 int WARN_ON (int) ;
 int async_port_probe ;
 int async_schedule (int ,struct ata_port*) ;
 int ata_ehi_clear_desc (TYPE_2__*) ;
 int ata_mode_string (unsigned long) ;
 unsigned long ata_pack_xfermask (int ,int ,int ) ;
 int ata_port_info (struct ata_port*,char*,...) ;
 int ata_port_is_dummy (struct ata_port*) ;
 int ata_print_id ;
 int ata_scsi_add_hosts (struct ata_host*,struct scsi_host_template*) ;
 int ata_tport_add (int ,struct ata_port*) ;
 int ata_tport_delete (struct ata_port*) ;
 int atomic_inc_return (int *) ;
 int clamp (int ,int,int ) ;
 int dev_err (int ,char*) ;
 int kfree (struct ata_port*) ;
 int sata_link_init_spd (TYPE_1__*) ;

int ata_host_register(struct ata_host *host, struct scsi_host_template *sht)
{
 int i, rc;

 host->n_tags = clamp(sht->can_queue, 1, ATA_MAX_QUEUE);


 if (!(host->flags & ATA_HOST_STARTED)) {
  dev_err(host->dev, "BUG: trying to register unstarted host\n");
  WARN_ON(1);
  return -EINVAL;
 }





 for (i = host->n_ports; host->ports[i]; i++)
  kfree(host->ports[i]);


 for (i = 0; i < host->n_ports; i++) {
  host->ports[i]->print_id = atomic_inc_return(&ata_print_id);
  host->ports[i]->local_port_no = i + 1;
 }


 for (i = 0; i < host->n_ports; i++) {
  rc = ata_tport_add(host->dev,host->ports[i]);
  if (rc) {
   goto err_tadd;
  }
 }

 rc = ata_scsi_add_hosts(host, sht);
 if (rc)
  goto err_tadd;


 for (i = 0; i < host->n_ports; i++) {
  struct ata_port *ap = host->ports[i];
  unsigned long xfer_mask;


  if (ap->cbl == ATA_CBL_NONE && (ap->flags & ATA_FLAG_SATA))
   ap->cbl = ATA_CBL_SATA;


  sata_link_init_spd(&ap->link);
  if (ap->slave_link)
   sata_link_init_spd(ap->slave_link);


  xfer_mask = ata_pack_xfermask(ap->pio_mask, ap->mwdma_mask,
           ap->udma_mask);

  if (!ata_port_is_dummy(ap)) {
   ata_port_info(ap, "%cATA max %s %s\n",
          (ap->flags & ATA_FLAG_SATA) ? 'S' : 'P',
          ata_mode_string(xfer_mask),
          ap->link.eh_info.desc);
   ata_ehi_clear_desc(&ap->link.eh_info);
  } else
   ata_port_info(ap, "DUMMY\n");
 }


 for (i = 0; i < host->n_ports; i++) {
  struct ata_port *ap = host->ports[i];
  async_schedule(async_port_probe, ap);
 }

 return 0;

 err_tadd:
 while (--i >= 0) {
  ata_tport_delete(host->ports[i]);
 }
 return rc;

}
