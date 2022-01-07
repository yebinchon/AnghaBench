
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_taskfile {int command; } ;
struct ata_port {int port_no; struct ata_host* host; struct ahci_port_priv* private_data; } ;
struct ata_link {int device; struct ata_port* ap; int eh_context; } ;
struct ata_host {int dev; struct ahci_host_priv* private_data; } ;
struct ahci_port_priv {int * rx_fis; } ;
struct ahci_host_priv {int (* start_engine ) (struct ata_port*) ;int (* stop_engine ) (struct ata_port*) ;} ;


 int ATA_BUSY ;
 int DPRINTK (char*,...) ;
 int KERN_INFO ;
 int RX_FIS_D2H_REG ;
 int SCR_STATUS ;
 int ahci_check_ready ;
 unsigned int ahci_dev_classify (struct ata_port*) ;
 int ata_link_printk (struct ata_link*,int ,char*,int) ;
 int ata_msleep (struct ata_port*,int) ;
 int ata_tf_init (int ,struct ata_taskfile*) ;
 int ata_tf_to_fis (struct ata_taskfile*,int ,int ,int *) ;
 unsigned long jiffies ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 unsigned long* sata_ehc_deb_timing (int *) ;
 int sata_link_hardreset (struct ata_link*,unsigned long const*,unsigned long,int*,int ) ;
 scalar_t__ sata_scr_read (struct ata_link*,int ,int*) ;
 int stub1 (struct ata_port*) ;
 int stub2 (struct ata_port*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int ahci_avn_hardreset(struct ata_link *link, unsigned int *class,
         unsigned long deadline)
{
 const unsigned long *timing = sata_ehc_deb_timing(&link->eh_context);
 struct ata_port *ap = link->ap;
 struct ahci_port_priv *pp = ap->private_data;
 struct ahci_host_priv *hpriv = ap->host->private_data;
 u8 *d2h_fis = pp->rx_fis + RX_FIS_D2H_REG;
 unsigned long tmo = deadline - jiffies;
 struct ata_taskfile tf;
 bool online;
 int rc, i;

 DPRINTK("ENTER\n");

 hpriv->stop_engine(ap);

 for (i = 0; i < 2; i++) {
  u16 val;
  u32 sstatus;
  int port = ap->port_no;
  struct ata_host *host = ap->host;
  struct pci_dev *pdev = to_pci_dev(host->dev);


  ata_tf_init(link->device, &tf);
  tf.command = ATA_BUSY;
  ata_tf_to_fis(&tf, 0, 0, d2h_fis);

  rc = sata_link_hardreset(link, timing, deadline, &online,
    ahci_check_ready);

  if (sata_scr_read(link, SCR_STATUS, &sstatus) != 0 ||
    (sstatus & 0xf) != 1)
   break;

  ata_link_printk(link, KERN_INFO, "avn bounce port%d\n",
    port);

  pci_read_config_word(pdev, 0x92, &val);
  val &= ~(1 << port);
  pci_write_config_word(pdev, 0x92, val);
  ata_msleep(ap, 1000);
  val |= 1 << port;
  pci_write_config_word(pdev, 0x92, val);
  deadline += tmo;
 }

 hpriv->start_engine(ap);

 if (online)
  *class = ahci_dev_classify(ap);

 DPRINTK("EXIT, rc=%d, class=%u\n", rc, *class);
 return rc;
}
