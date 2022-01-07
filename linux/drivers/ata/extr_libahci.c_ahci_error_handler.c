
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int device; } ;
struct ata_port {int pflags; TYPE_2__ link; TYPE_1__* host; } ;
struct ahci_host_priv {int (* stop_engine ) (struct ata_port*) ;int (* start_engine ) (struct ata_port*) ;} ;
struct TYPE_3__ {struct ahci_host_priv* private_data; } ;


 int ATA_PFLAG_FROZEN ;
 int ata_dev_enabled (int ) ;
 int sata_pmp_error_handler (struct ata_port*) ;
 int stub1 (struct ata_port*) ;
 int stub2 (struct ata_port*) ;
 int stub3 (struct ata_port*) ;

void ahci_error_handler(struct ata_port *ap)
{
 struct ahci_host_priv *hpriv = ap->host->private_data;

 if (!(ap->pflags & ATA_PFLAG_FROZEN)) {

  hpriv->stop_engine(ap);
  hpriv->start_engine(ap);
 }

 sata_pmp_error_handler(ap);

 if (!ata_dev_enabled(ap->link.device))
  hpriv->stop_engine(ap);
}
