
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct ata_port {unsigned int* sector_buf; } ;
struct ata_device {TYPE_1__* link; } ;
struct TYPE_2__ {struct ata_port* ap; } ;


 int ATA_LOG_IDENTIFY_DEVICE ;
 int ata_dev_info (struct ata_device*,char*,unsigned int) ;
 int ata_dev_warn (struct ata_device*,char*) ;
 int ata_log_supported (struct ata_device*,int ) ;
 unsigned int ata_read_log_page (struct ata_device*,int ,int ,unsigned int*,int) ;

__attribute__((used)) static bool ata_identify_page_supported(struct ata_device *dev, u8 page)
{
 struct ata_port *ap = dev->link->ap;
 unsigned int err, i;

 if (!ata_log_supported(dev, ATA_LOG_IDENTIFY_DEVICE)) {
  ata_dev_warn(dev, "ATA Identify Device Log not supported\n");
  return 0;
 }





 err = ata_read_log_page(dev, ATA_LOG_IDENTIFY_DEVICE, 0, ap->sector_buf,
    1);
 if (err) {
  ata_dev_info(dev,
        "failed to get Device Identify Log Emask 0x%x\n",
        err);
  return 0;
 }

 for (i = 0; i < ap->sector_buf[8]; i++) {
  if (ap->sector_buf[9 + i] == page)
   return 1;
 }

 return 0;
}
