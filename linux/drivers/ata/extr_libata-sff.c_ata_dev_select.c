
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* device; } ;
struct ata_port {TYPE_3__ link; TYPE_1__* ops; } ;
struct TYPE_5__ {scalar_t__ class; } ;
struct TYPE_4__ {int (* sff_dev_select ) (struct ata_port*,unsigned int) ;} ;


 scalar_t__ ATA_DEV_ATAPI ;
 scalar_t__ ata_msg_probe (struct ata_port*) ;
 int ata_msleep (struct ata_port*,int) ;
 int ata_port_info (struct ata_port*,char*,unsigned int,unsigned int) ;
 int ata_wait_idle (struct ata_port*) ;
 int stub1 (struct ata_port*,unsigned int) ;

__attribute__((used)) static void ata_dev_select(struct ata_port *ap, unsigned int device,
      unsigned int wait, unsigned int can_sleep)
{
 if (ata_msg_probe(ap))
  ata_port_info(ap, "ata_dev_select: ENTER, device %u, wait %u\n",
         device, wait);

 if (wait)
  ata_wait_idle(ap);

 ap->ops->sff_dev_select(ap, device);

 if (wait) {
  if (can_sleep && ap->link.device[device].class == ATA_DEV_ATAPI)
   ata_msleep(ap, 150);
  ata_wait_idle(ap);
 }
}
