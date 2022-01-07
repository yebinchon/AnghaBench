
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_taskfile {scalar_t__ command; int protocol; int flags; } ;
struct TYPE_3__ {scalar_t__ command; } ;
struct ata_queued_cmd {int err_mask; struct ata_taskfile result_tf; TYPE_2__* scsicmd; TYPE_1__ tf; struct ata_device* dev; } ;
struct ata_port {int pflags; } ;
struct ata_link {int active_tag; struct ata_port* ap; } ;
struct ata_device {struct ata_link* link; } ;
struct TYPE_4__ {int allowed; } ;


 int AC_ERR_DEV ;
 scalar_t__ ATA_CMD_FLUSH ;
 scalar_t__ ATA_CMD_FLUSH_EXT ;
 int ATA_PFLAG_FROZEN ;
 int ATA_PROT_NODATA ;
 int ATA_TFLAG_DEVICE ;
 int DMA_NONE ;
 int EIO ;
 struct ata_queued_cmd* __ata_qc_from_tag (struct ata_port*,int ) ;
 int ata_dev_warn (struct ata_device*,char*,unsigned int,...) ;
 unsigned int ata_exec_internal (struct ata_device*,struct ata_taskfile*,int *,int ,int *,int ,int ) ;
 int ata_tag_valid (int ) ;
 int ata_tf_init (struct ata_device*,struct ata_taskfile*) ;
 int max (int ,int) ;

__attribute__((used)) static int ata_eh_maybe_retry_flush(struct ata_device *dev)
{
 struct ata_link *link = dev->link;
 struct ata_port *ap = link->ap;
 struct ata_queued_cmd *qc;
 struct ata_taskfile tf;
 unsigned int err_mask;
 int rc = 0;


 if (!ata_tag_valid(link->active_tag))
  return 0;

 qc = __ata_qc_from_tag(ap, link->active_tag);
 if (qc->dev != dev || (qc->tf.command != ATA_CMD_FLUSH_EXT &&
          qc->tf.command != ATA_CMD_FLUSH))
  return 0;


 if (qc->err_mask & AC_ERR_DEV)
  return 0;


 ata_tf_init(dev, &tf);

 tf.command = qc->tf.command;
 tf.flags |= ATA_TFLAG_DEVICE;
 tf.protocol = ATA_PROT_NODATA;

 ata_dev_warn(dev, "retrying FLUSH 0x%x Emask 0x%x\n",
         tf.command, qc->err_mask);

 err_mask = ata_exec_internal(dev, &tf, ((void*)0), DMA_NONE, ((void*)0), 0, 0);
 if (!err_mask) {
  qc->scsicmd->allowed = max(qc->scsicmd->allowed, 1);
 } else {
  ata_dev_warn(dev, "FLUSH failed Emask 0x%x\n",
          err_mask);
  rc = -EIO;


  if (err_mask & AC_ERR_DEV) {
   qc->err_mask |= AC_ERR_DEV;
   qc->result_tf = tf;
   if (!(ap->pflags & ATA_PFLAG_FROZEN))
    rc = 0;
  }
 }
 return rc;
}
