
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_taskfile {int ctl; } ;
struct ata_port {struct ahci_port_priv* private_data; TYPE_1__* host; } ;
struct ata_link {int device; struct ata_port* ap; } ;
struct ahci_port_priv {scalar_t__ fbs_enabled; } ;
struct ahci_host_priv {int flags; } ;
struct TYPE_2__ {struct ahci_host_priv* private_data; } ;


 int AHCI_CMD_CLR_BUSY ;
 int AHCI_CMD_RESET ;
 int AHCI_HFLAG_SRST_TOUT_IS_OFFLINE ;
 unsigned int ATA_DEV_NONE ;
 int ATA_SRST ;
 int DPRINTK (char*,...) ;
 int EBUSY ;
 int EIO ;
 int EOPNOTSUPP ;
 unsigned int ahci_dev_classify (struct ata_port*) ;
 int ahci_disable_fbs (struct ata_port*) ;
 int ahci_enable_fbs (struct ata_port*) ;
 scalar_t__ ahci_exec_polled_cmd (struct ata_port*,int,struct ata_taskfile*,int ,int,unsigned long) ;
 int ahci_kick_engine (struct ata_port*) ;
 int ata_is_host_link (struct ata_link*) ;
 int ata_link_err (struct ata_link*,char*,char const*) ;
 int ata_link_info (struct ata_link*,char*) ;
 int ata_link_warn (struct ata_link*,char*,int) ;
 int ata_msleep (struct ata_port*,int) ;
 int ata_tf_init (int ,struct ata_taskfile*) ;
 int ata_wait_after_reset (struct ata_link*,unsigned long,int (*) (struct ata_link*)) ;
 unsigned long jiffies ;
 unsigned long jiffies_to_msecs (unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

int ahci_do_softreset(struct ata_link *link, unsigned int *class,
        int pmp, unsigned long deadline,
        int (*check_ready)(struct ata_link *link))
{
 struct ata_port *ap = link->ap;
 struct ahci_host_priv *hpriv = ap->host->private_data;
 struct ahci_port_priv *pp = ap->private_data;
 const char *reason = ((void*)0);
 unsigned long now, msecs;
 struct ata_taskfile tf;
 bool fbs_disabled = 0;
 int rc;

 DPRINTK("ENTER\n");


 rc = ahci_kick_engine(ap);
 if (rc && rc != -EOPNOTSUPP)
  ata_link_warn(link, "failed to reset engine (errno=%d)\n", rc);






 if (!ata_is_host_link(link) && pp->fbs_enabled) {
  ahci_disable_fbs(ap);
  fbs_disabled = 1;
 }

 ata_tf_init(link->device, &tf);


 msecs = 0;
 now = jiffies;
 if (time_after(deadline, now))
  msecs = jiffies_to_msecs(deadline - now);

 tf.ctl |= ATA_SRST;
 if (ahci_exec_polled_cmd(ap, pmp, &tf, 0,
     AHCI_CMD_RESET | AHCI_CMD_CLR_BUSY, msecs)) {
  rc = -EIO;
  reason = "1st FIS failed";
  goto fail;
 }


 ata_msleep(ap, 1);


 tf.ctl &= ~ATA_SRST;
 ahci_exec_polled_cmd(ap, pmp, &tf, 0, 0, 0);


 rc = ata_wait_after_reset(link, deadline, check_ready);
 if (rc == -EBUSY && hpriv->flags & AHCI_HFLAG_SRST_TOUT_IS_OFFLINE) {





  ata_link_info(link, "device not ready, treating as offline\n");
  *class = ATA_DEV_NONE;
 } else if (rc) {

  reason = "device not ready";
  goto fail;
 } else
  *class = ahci_dev_classify(ap);


 if (fbs_disabled)
  ahci_enable_fbs(ap);

 DPRINTK("EXIT, class=%u\n", *class);
 return 0;

 fail:
 ata_link_err(link, "softreset failed (%s)\n", reason);
 return rc;
}
