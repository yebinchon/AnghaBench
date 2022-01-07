
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {int* sector_buf; } ;
struct ata_device {int flags; TYPE_1__* link; } ;
struct TYPE_2__ {struct ata_port* ap; } ;


 int ATA_DFLAG_NCQ_PRIO ;
 int ATA_DFLAG_NCQ_PRIO_ENABLE ;
 int ATA_LOG_IDENTIFY_DEVICE ;
 size_t ATA_LOG_NCQ_PRIO_OFFSET ;
 int ATA_LOG_SATA_SETTINGS ;
 int BIT (int) ;
 int ata_dev_dbg (struct ata_device*,char*,...) ;
 unsigned int ata_read_log_page (struct ata_device*,int ,int ,int*,int) ;

__attribute__((used)) static void ata_dev_config_ncq_prio(struct ata_device *dev)
{
 struct ata_port *ap = dev->link->ap;
 unsigned int err_mask;

 if (!(dev->flags & ATA_DFLAG_NCQ_PRIO_ENABLE)) {
  dev->flags &= ~ATA_DFLAG_NCQ_PRIO;
  return;
 }

 err_mask = ata_read_log_page(dev,
         ATA_LOG_IDENTIFY_DEVICE,
         ATA_LOG_SATA_SETTINGS,
         ap->sector_buf,
         1);
 if (err_mask) {
  ata_dev_dbg(dev,
       "failed to get Identify Device data, Emask 0x%x\n",
       err_mask);
  return;
 }

 if (ap->sector_buf[ATA_LOG_NCQ_PRIO_OFFSET] & BIT(3)) {
  dev->flags |= ATA_DFLAG_NCQ_PRIO;
 } else {
  dev->flags &= ~ATA_DFLAG_NCQ_PRIO;
  ata_dev_dbg(dev, "SATA page does not support priority\n");
 }

}
