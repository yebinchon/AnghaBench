
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_taskfile {int feature; int lbal; int lbam; int lbah; int flags; int protocol; int command; } ;
struct ata_eh_context {int unloaded_mask; } ;
struct ata_device {int devno; TYPE_1__* link; } ;
struct TYPE_2__ {struct ata_eh_context eh_context; } ;


 int ATA_CMD_CHK_POWER ;
 int ATA_CMD_IDLEIMMEDIATE ;
 int ATA_PROT_NODATA ;
 int ATA_TFLAG_DEVICE ;
 int ATA_TFLAG_ISADDR ;
 int DMA_NONE ;
 int ata_dev_err (struct ata_device*,char*) ;
 unsigned int ata_exec_internal (struct ata_device*,struct ata_taskfile*,int *,int ,int *,int ,int ) ;
 int ata_tf_init (struct ata_device*,struct ata_taskfile*) ;

__attribute__((used)) static void ata_eh_park_issue_cmd(struct ata_device *dev, int park)
{
 struct ata_eh_context *ehc = &dev->link->eh_context;
 struct ata_taskfile tf;
 unsigned int err_mask;

 ata_tf_init(dev, &tf);
 if (park) {
  ehc->unloaded_mask |= 1 << dev->devno;
  tf.command = ATA_CMD_IDLEIMMEDIATE;
  tf.feature = 0x44;
  tf.lbal = 0x4c;
  tf.lbam = 0x4e;
  tf.lbah = 0x55;
 } else {
  ehc->unloaded_mask &= ~(1 << dev->devno);
  tf.command = ATA_CMD_CHK_POWER;
 }

 tf.flags |= ATA_TFLAG_DEVICE | ATA_TFLAG_ISADDR;
 tf.protocol = ATA_PROT_NODATA;
 err_mask = ata_exec_internal(dev, &tf, ((void*)0), DMA_NONE, ((void*)0), 0, 0);
 if (park && (err_mask || tf.lbal != 0xc4)) {
  ata_dev_err(dev, "head unload failed!\n");
  ehc->unloaded_mask &= ~(1 << dev->devno);
 }
}
