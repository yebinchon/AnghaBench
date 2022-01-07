
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef void* u32 ;
struct ata_port {int * sector_buf; } ;
struct ata_device {scalar_t__ class; int flags; int zac_zoned_cap; void* zac_zones_max_open; void* zac_zones_optimal_nonseq; void* zac_zones_optimal_open; int id; TYPE_1__* link; } ;
struct TYPE_2__ {struct ata_port* ap; } ;


 scalar_t__ ATA_DEV_ZAC ;
 int ATA_DFLAG_ZAC ;
 int ATA_LOG_IDENTIFY_DEVICE ;
 int ATA_LOG_ZONED_INFORMATION ;
 void* U32_MAX ;
 int ata_dev_warn (struct ata_device*,char*) ;
 int ata_id_zoned_cap (int ) ;
 int ata_identify_page_supported (struct ata_device*,int ) ;
 unsigned int ata_read_log_page (struct ata_device*,int ,int ,int *,int) ;
 int get_unaligned_le64 (int *) ;

__attribute__((used)) static void ata_dev_config_zac(struct ata_device *dev)
{
 struct ata_port *ap = dev->link->ap;
 unsigned int err_mask;
 u8 *identify_buf = ap->sector_buf;

 dev->zac_zones_optimal_open = U32_MAX;
 dev->zac_zones_optimal_nonseq = U32_MAX;
 dev->zac_zones_max_open = U32_MAX;




 if (dev->class == ATA_DEV_ZAC)
  dev->flags |= ATA_DFLAG_ZAC;
 else if (ata_id_zoned_cap(dev->id) == 0x01)



  dev->flags |= ATA_DFLAG_ZAC;

 if (!(dev->flags & ATA_DFLAG_ZAC))
  return;

 if (!ata_identify_page_supported(dev, ATA_LOG_ZONED_INFORMATION)) {
  ata_dev_warn(dev,
        "ATA Zoned Information Log not supported\n");
  return;
 }




 err_mask = ata_read_log_page(dev, ATA_LOG_IDENTIFY_DEVICE,
         ATA_LOG_ZONED_INFORMATION,
         identify_buf, 1);
 if (!err_mask) {
  u64 zoned_cap, opt_open, opt_nonseq, max_open;

  zoned_cap = get_unaligned_le64(&identify_buf[8]);
  if ((zoned_cap >> 63))
   dev->zac_zoned_cap = (zoned_cap & 1);
  opt_open = get_unaligned_le64(&identify_buf[24]);
  if ((opt_open >> 63))
   dev->zac_zones_optimal_open = (u32)opt_open;
  opt_nonseq = get_unaligned_le64(&identify_buf[32]);
  if ((opt_nonseq >> 63))
   dev->zac_zones_optimal_nonseq = (u32)opt_nonseq;
  max_open = get_unaligned_le64(&identify_buf[40]);
  if ((max_open >> 63))
   dev->zac_zones_max_open = (u32)max_open;
 }
}
