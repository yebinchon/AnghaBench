
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ata_taskfile {int command; } ;
struct ata_port {int port_no; TYPE_1__* host; struct ahci_port_priv* private_data; } ;
struct ata_link {struct ata_port* ap; int device; } ;
struct ahci_port_priv {int * rx_fis; } ;
struct ahci_host_priv {int (* start_engine ) (struct ata_port*) ;int (* stop_engine ) (struct ata_port*) ;} ;
struct TYPE_2__ {struct ahci_host_priv* private_data; } ;


 int ATA_BUSY ;
 int RX_FIS_D2H_REG ;
 int SCR_STATUS ;
 unsigned int ahci_dev_classify (struct ata_port*) ;
 int ata_tf_init (int ,struct ata_taskfile*) ;
 int ata_tf_to_fis (struct ata_taskfile*,int ,int ,int *) ;
 int highbank_cphy_disable_overrides (int ) ;
 int highbank_cphy_override_lane (int ) ;
 int sata_link_hardreset (struct ata_link*,unsigned long const*,unsigned long,int*,int *) ;
 scalar_t__ sata_scr_read (struct ata_link*,int ,int*) ;
 int stub1 (struct ata_port*) ;
 int stub2 (struct ata_port*) ;

__attribute__((used)) static int ahci_highbank_hardreset(struct ata_link *link, unsigned int *class,
    unsigned long deadline)
{
 static const unsigned long timing[] = { 5, 100, 500};
 struct ata_port *ap = link->ap;
 struct ahci_port_priv *pp = ap->private_data;
 struct ahci_host_priv *hpriv = ap->host->private_data;
 u8 *d2h_fis = pp->rx_fis + RX_FIS_D2H_REG;
 struct ata_taskfile tf;
 bool online;
 u32 sstatus;
 int rc;
 int retry = 100;

 hpriv->stop_engine(ap);


 ata_tf_init(link->device, &tf);
 tf.command = ATA_BUSY;
 ata_tf_to_fis(&tf, 0, 0, d2h_fis);

 do {
  highbank_cphy_disable_overrides(link->ap->port_no);
  rc = sata_link_hardreset(link, timing, deadline, &online, ((void*)0));
  highbank_cphy_override_lane(link->ap->port_no);




  if (sata_scr_read(link, SCR_STATUS, &sstatus))
   break;
  if (!(sstatus & 0x3))
   break;
 } while (!online && retry--);

 hpriv->start_engine(ap);

 if (online)
  *class = ahci_dev_classify(ap);

 return rc;
}
