
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_port {int * sector_buf; } ;
struct ata_device {TYPE_1__* link; } ;
struct TYPE_2__ {struct ata_port* ap; } ;


 int ATA_LOG_DIRECTORY ;
 scalar_t__ ata_read_log_page (struct ata_device*,int ,int ,int *,int) ;
 scalar_t__ get_unaligned_le16 (int *) ;

__attribute__((used)) static bool ata_log_supported(struct ata_device *dev, u8 log)
{
 struct ata_port *ap = dev->link->ap;

 if (ata_read_log_page(dev, ATA_LOG_DIRECTORY, 0, ap->sector_buf, 1))
  return 0;
 return get_unaligned_le16(&ap->sector_buf[log * 2]) ? 1 : 0;
}
