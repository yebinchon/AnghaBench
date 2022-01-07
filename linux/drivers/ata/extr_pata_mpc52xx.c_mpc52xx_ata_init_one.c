
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc52xx_ata_priv {int ata_irq; TYPE_1__* ata_regs; } ;
struct device {int dummy; } ;
struct ata_ioports {int * command_addr; int * status_addr; int * device_addr; int * lbah_addr; int * lbam_addr; int * lbal_addr; int * nsect_addr; int * feature_addr; int * error_addr; int * data_addr; int * ctl_addr; int * altstatus_addr; int * cmd_addr; } ;
struct ata_port {int mwdma_mask; int udma_mask; struct ata_ioports ioaddr; int * ops; int pio_mask; int flags; } ;
struct ata_host {struct mpc52xx_ata_priv* private_data; struct ata_port** ports; } ;
struct TYPE_2__ {int tf_command; int tf_dev_head; int tf_cyl_high; int tf_cyl_low; int tf_sec_num; int tf_sec_count; int tf_features; int tf_data; int tf_control; } ;


 int ATA_FLAG_SLAVE_POSS ;
 int ATA_PIO4 ;
 int ENOMEM ;
 int ata_bmdma_interrupt ;
 int ata_host_activate (struct ata_host*,int ,int ,int ,int *) ;
 struct ata_host* ata_host_alloc (struct device*,int) ;
 int ata_port_desc (struct ata_port*,char*,unsigned long) ;
 int mpc52xx_ata_port_ops ;
 int mpc52xx_ata_sht ;

__attribute__((used)) static int mpc52xx_ata_init_one(struct device *dev,
    struct mpc52xx_ata_priv *priv,
    unsigned long raw_ata_regs,
    int mwdma_mask, int udma_mask)
{
 struct ata_host *host;
 struct ata_port *ap;
 struct ata_ioports *aio;

 host = ata_host_alloc(dev, 1);
 if (!host)
  return -ENOMEM;

 ap = host->ports[0];
 ap->flags |= ATA_FLAG_SLAVE_POSS;
 ap->pio_mask = ATA_PIO4;
 ap->mwdma_mask = mwdma_mask;
 ap->udma_mask = udma_mask;
 ap->ops = &mpc52xx_ata_port_ops;
 host->private_data = priv;

 aio = &ap->ioaddr;
 aio->cmd_addr = ((void*)0);
 aio->altstatus_addr = &priv->ata_regs->tf_control;
 aio->ctl_addr = &priv->ata_regs->tf_control;
 aio->data_addr = &priv->ata_regs->tf_data;
 aio->error_addr = &priv->ata_regs->tf_features;
 aio->feature_addr = &priv->ata_regs->tf_features;
 aio->nsect_addr = &priv->ata_regs->tf_sec_count;
 aio->lbal_addr = &priv->ata_regs->tf_sec_num;
 aio->lbam_addr = &priv->ata_regs->tf_cyl_low;
 aio->lbah_addr = &priv->ata_regs->tf_cyl_high;
 aio->device_addr = &priv->ata_regs->tf_dev_head;
 aio->status_addr = &priv->ata_regs->tf_command;
 aio->command_addr = &priv->ata_regs->tf_command;

 ata_port_desc(ap, "ata_regs 0x%lx", raw_ata_regs);


 return ata_host_activate(host, priv->ata_irq, ata_bmdma_interrupt, 0,
     &mpc52xx_ata_sht);
}
