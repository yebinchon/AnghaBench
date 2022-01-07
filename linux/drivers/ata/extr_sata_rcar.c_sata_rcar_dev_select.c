
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device_addr; } ;
struct ata_port {TYPE_1__ ioaddr; } ;


 int ATA_DEVICE_OBS ;
 int ata_sff_pause (struct ata_port*) ;
 int iowrite32 (int ,int ) ;

__attribute__((used)) static void sata_rcar_dev_select(struct ata_port *ap, unsigned int device)
{
 iowrite32(ATA_DEVICE_OBS, ap->ioaddr.device_addr);
 ata_sff_pause(ap);
}
