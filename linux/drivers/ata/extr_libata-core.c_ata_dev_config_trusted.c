
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct ata_port {int * sector_buf; } ;
struct ata_device {int flags; int id; TYPE_1__* link; } ;
struct TYPE_2__ {struct ata_port* ap; } ;


 int ATA_DFLAG_TRUSTED ;
 int ATA_LOG_IDENTIFY_DEVICE ;
 int ATA_LOG_SECURITY ;
 int ata_dev_dbg (struct ata_device*,char*,...) ;
 int ata_dev_warn (struct ata_device*,char*) ;
 int ata_id_has_trusted (int ) ;
 int ata_identify_page_supported (struct ata_device*,int ) ;
 unsigned int ata_read_log_page (struct ata_device*,int ,int ,int *,int) ;
 unsigned long long get_unaligned_le64 (int *) ;

__attribute__((used)) static void ata_dev_config_trusted(struct ata_device *dev)
{
 struct ata_port *ap = dev->link->ap;
 u64 trusted_cap;
 unsigned int err;

 if (!ata_id_has_trusted(dev->id))
  return;

 if (!ata_identify_page_supported(dev, ATA_LOG_SECURITY)) {
  ata_dev_warn(dev,
        "Security Log not supported\n");
  return;
 }

 err = ata_read_log_page(dev, ATA_LOG_IDENTIFY_DEVICE, ATA_LOG_SECURITY,
   ap->sector_buf, 1);
 if (err) {
  ata_dev_dbg(dev,
       "failed to read Security Log, Emask 0x%x\n", err);
  return;
 }

 trusted_cap = get_unaligned_le64(&ap->sector_buf[40]);
 if (!(trusted_cap & (1ULL << 63))) {
  ata_dev_dbg(dev,
       "Trusted Computing capability qword not valid!\n");
  return;
 }

 if (trusted_cap & (1 << 0))
  dev->flags |= ATA_DFLAG_TRUSTED;
}
