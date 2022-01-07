
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_taskfile {int command; } ;
struct ata_port {TYPE_1__* host; struct ahci_port_priv* private_data; } ;
struct ata_link {int eh_context; int device; struct ata_port* ap; } ;
struct ahci_port_priv {int * rx_fis; } ;
struct ahci_host_priv {int (* start_engine ) (struct ata_port*) ;int (* stop_engine ) (struct ata_port*) ;} ;
struct TYPE_2__ {struct ahci_host_priv* private_data; } ;


 int ATA_BUSY ;
 int HZ ;
 int RX_FIS_D2H_REG ;
 int ahci_check_ready ;
 int ahci_kick_engine (struct ata_port*) ;
 int ata_tf_init (int ,struct ata_taskfile*) ;
 int ata_tf_to_fis (struct ata_taskfile*,int ,int ,int *) ;
 int ata_wait_after_reset (struct ata_link*,scalar_t__,int ) ;
 scalar_t__ jiffies ;
 int sata_ehc_deb_timing (int *) ;
 int sata_link_hardreset (struct ata_link*,int ,unsigned long,int*,int *) ;
 int stub1 (struct ata_port*) ;
 int stub2 (struct ata_port*) ;

__attribute__((used)) static int ahci_p5wdh_hardreset(struct ata_link *link, unsigned int *class,
    unsigned long deadline)
{
 struct ata_port *ap = link->ap;
 struct ahci_port_priv *pp = ap->private_data;
 struct ahci_host_priv *hpriv = ap->host->private_data;
 u8 *d2h_fis = pp->rx_fis + RX_FIS_D2H_REG;
 struct ata_taskfile tf;
 bool online;
 int rc;

 hpriv->stop_engine(ap);


 ata_tf_init(link->device, &tf);
 tf.command = ATA_BUSY;
 ata_tf_to_fis(&tf, 0, 0, d2h_fis);

 rc = sata_link_hardreset(link, sata_ehc_deb_timing(&link->eh_context),
     deadline, &online, ((void*)0));

 hpriv->start_engine(ap);
 if (online) {
  rc = ata_wait_after_reset(link, jiffies + 2 * HZ,
       ahci_check_ready);
  if (rc)
   ahci_kick_engine(ap);
 }
 return rc;
}
