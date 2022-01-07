
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_taskfile {int flags; int nsect; int protocol; int feature; int command; } ;
struct ata_device {int xfer_mode; int id; } ;


 int ATA_CMD_SET_FEATURES ;
 int ATA_PROT_NODATA ;
 int ATA_TFLAG_DEVICE ;
 int ATA_TFLAG_ISADDR ;
 int ATA_TFLAG_POLLING ;
 int DMA_NONE ;
 int DPRINTK (char*,...) ;
 int SETFEATURES_XFER ;
 unsigned int ata_exec_internal (struct ata_device*,struct ata_taskfile*,int *,int ,int *,int ,int) ;
 scalar_t__ ata_id_has_iordy (int ) ;
 scalar_t__ ata_pio_need_iordy (struct ata_device*) ;
 int ata_tf_init (struct ata_device*,struct ata_taskfile*) ;

__attribute__((used)) static unsigned int ata_dev_set_xfermode(struct ata_device *dev)
{
 struct ata_taskfile tf;
 unsigned int err_mask;


 DPRINTK("set features - xfer mode\n");




 ata_tf_init(dev, &tf);
 tf.command = ATA_CMD_SET_FEATURES;
 tf.feature = SETFEATURES_XFER;
 tf.flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_DEVICE | ATA_TFLAG_POLLING;
 tf.protocol = ATA_PROT_NODATA;

 if (ata_pio_need_iordy(dev))
  tf.nsect = dev->xfer_mode;

  else if (ata_id_has_iordy(dev->id))
  tf.nsect = 0x01;
 else
  return 0;


 err_mask = ata_exec_internal(dev, &tf, ((void*)0), DMA_NONE, ((void*)0), 0, 15000);

 DPRINTK("EXIT, err_mask=%x\n", err_mask);
 return err_mask;
}
