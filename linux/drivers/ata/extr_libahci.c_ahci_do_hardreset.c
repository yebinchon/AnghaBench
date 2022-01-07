
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_taskfile {int command; } ;
struct ata_port {TYPE_1__* host; struct ahci_port_priv* private_data; } ;
struct ata_link {int device; struct ata_port* ap; int eh_context; } ;
struct ahci_port_priv {int * rx_fis; } ;
struct ahci_host_priv {int (* start_engine ) (struct ata_port*) ;int (* stop_engine ) (struct ata_port*) ;} ;
struct TYPE_2__ {struct ahci_host_priv* private_data; } ;


 int ATA_BUSY ;
 int DPRINTK (char*,...) ;
 int RX_FIS_D2H_REG ;
 int ahci_check_ready ;
 unsigned int ahci_dev_classify (struct ata_port*) ;
 int ata_tf_init (int ,struct ata_taskfile*) ;
 int ata_tf_to_fis (struct ata_taskfile*,int ,int ,int *) ;
 unsigned long* sata_ehc_deb_timing (int *) ;
 int sata_link_hardreset (struct ata_link*,unsigned long const*,unsigned long,int*,int ) ;
 int stub1 (struct ata_port*) ;
 int stub2 (struct ata_port*) ;

int ahci_do_hardreset(struct ata_link *link, unsigned int *class,
        unsigned long deadline, bool *online)
{
 const unsigned long *timing = sata_ehc_deb_timing(&link->eh_context);
 struct ata_port *ap = link->ap;
 struct ahci_port_priv *pp = ap->private_data;
 struct ahci_host_priv *hpriv = ap->host->private_data;
 u8 *d2h_fis = pp->rx_fis + RX_FIS_D2H_REG;
 struct ata_taskfile tf;
 int rc;

 DPRINTK("ENTER\n");

 hpriv->stop_engine(ap);


 ata_tf_init(link->device, &tf);
 tf.command = ATA_BUSY;
 ata_tf_to_fis(&tf, 0, 0, d2h_fis);

 rc = sata_link_hardreset(link, timing, deadline, online,
     ahci_check_ready);

 hpriv->start_engine(ap);

 if (*online)
  *class = ahci_dev_classify(ap);

 DPRINTK("EXIT, rc=%d, class=%u\n", rc, *class);
 return rc;
}
