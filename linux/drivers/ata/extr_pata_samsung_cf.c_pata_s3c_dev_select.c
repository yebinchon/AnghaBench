
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int device_addr; } ;
struct ata_port {TYPE_1__ ioaddr; int host; } ;


 int ATA_DEV1 ;
 int ATA_DEVICE_OBS ;
 int ata_outb (int ,int ,int ) ;
 int ata_sff_pause (struct ata_port*) ;

__attribute__((used)) static void pata_s3c_dev_select(struct ata_port *ap, unsigned int device)
{
 u8 tmp = ATA_DEVICE_OBS;

 if (device != 0)
  tmp |= ATA_DEV1;

 ata_outb(ap->host, tmp, ap->ioaddr.device_addr);
 ata_sff_pause(ap);
}
