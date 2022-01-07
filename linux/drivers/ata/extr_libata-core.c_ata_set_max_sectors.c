
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ata_taskfile {int flags; int hob_lbal; int hob_lbam; int hob_lbah; int device; int lbal; int lbam; int lbah; int feature; int protocol; int command; } ;
struct ata_device {int id; } ;


 unsigned int AC_ERR_DEV ;
 int ATA_ABORTED ;
 int ATA_CMD_SET_MAX ;
 int ATA_CMD_SET_MAX_EXT ;
 int ATA_IDNF ;
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

__attribute__((used)) static int ata_set_max_sectors(struct ata_device *dev, u64 new_sectors)
{
 unsigned int err_mask;
 struct ata_taskfile tf;
 int lba48 = ata_id_has_lba48(dev->id);

 new_sectors--;

 ata_tf_init(dev, &tf);

 tf.flags |= ATA_TFLAG_DEVICE | ATA_TFLAG_ISADDR;

 if (lba48) {
  tf.command = ATA_CMD_SET_MAX_EXT;
  tf.flags |= ATA_TFLAG_LBA48;

  tf.hob_lbal = (new_sectors >> 24) & 0xff;
  tf.hob_lbam = (new_sectors >> 32) & 0xff;
  tf.hob_lbah = (new_sectors >> 40) & 0xff;
 } else {
  tf.command = ATA_CMD_SET_MAX;

  tf.device |= (new_sectors >> 24) & 0xf;
 }

 tf.protocol = ATA_PROT_NODATA;
 tf.device |= ATA_LBA;

 tf.lbal = (new_sectors >> 0) & 0xff;
 tf.lbam = (new_sectors >> 8) & 0xff;
 tf.lbah = (new_sectors >> 16) & 0xff;

 err_mask = ata_exec_internal(dev, &tf, ((void*)0), DMA_NONE, ((void*)0), 0, 0);
 if (err_mask) {
  ata_dev_warn(dev,
        "failed to set max address (err_mask=0x%x)\n",
        err_mask);
  if (err_mask == AC_ERR_DEV &&
      (tf.feature & (ATA_ABORTED | ATA_IDNF)))
   return -EACCES;
  return -EIO;
 }

 return 0;
}
