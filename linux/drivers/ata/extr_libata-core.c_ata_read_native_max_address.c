
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ata_taskfile {int flags; int feature; int device; int protocol; int command; } ;
struct ata_device {int horkage; int id; } ;


 unsigned int AC_ERR_DEV ;
 int ATA_ABORTED ;
 int ATA_CMD_READ_NATIVE_MAX ;
 int ATA_CMD_READ_NATIVE_MAX_EXT ;
 int ATA_HORKAGE_HPA_SIZE ;
 int ATA_LBA ;
 int ATA_PROT_NODATA ;
 int ATA_TFLAG_DEVICE ;
 int ATA_TFLAG_ISADDR ;
 int ATA_TFLAG_LBA48 ;
 int DMA_NONE ;
 int EACCES ;
 int EIO ;
 int ata_dev_warn (struct ata_device*,char*,unsigned int) ;
 unsigned int ata_exec_internal (struct ata_device*,struct ata_taskfile*,int *,int ,int *,int ,int ) ;
 int ata_id_has_lba48 (int ) ;
 int ata_tf_init (struct ata_device*,struct ata_taskfile*) ;
 scalar_t__ ata_tf_to_lba (struct ata_taskfile*) ;
 scalar_t__ ata_tf_to_lba48 (struct ata_taskfile*) ;

__attribute__((used)) static int ata_read_native_max_address(struct ata_device *dev, u64 *max_sectors)
{
 unsigned int err_mask;
 struct ata_taskfile tf;
 int lba48 = ata_id_has_lba48(dev->id);

 ata_tf_init(dev, &tf);


 tf.flags |= ATA_TFLAG_DEVICE | ATA_TFLAG_ISADDR;

 if (lba48) {
  tf.command = ATA_CMD_READ_NATIVE_MAX_EXT;
  tf.flags |= ATA_TFLAG_LBA48;
 } else
  tf.command = ATA_CMD_READ_NATIVE_MAX;

 tf.protocol = ATA_PROT_NODATA;
 tf.device |= ATA_LBA;

 err_mask = ata_exec_internal(dev, &tf, ((void*)0), DMA_NONE, ((void*)0), 0, 0);
 if (err_mask) {
  ata_dev_warn(dev,
        "failed to read native max address (err_mask=0x%x)\n",
        err_mask);
  if (err_mask == AC_ERR_DEV && (tf.feature & ATA_ABORTED))
   return -EACCES;
  return -EIO;
 }

 if (lba48)
  *max_sectors = ata_tf_to_lba48(&tf) + 1;
 else
  *max_sectors = ata_tf_to_lba(&tf) + 1;
 if (dev->horkage & ATA_HORKAGE_HPA_SIZE)
  (*max_sectors)--;
 return 0;
}
