
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bmdma_addr; } ;
struct TYPE_3__ {struct ata_device* device; } ;
struct ata_port {TYPE_2__ ioaddr; struct ata_device* private_data; TYPE_1__ link; } ;
struct ata_device {int dummy; } ;


 int ata_sff_dev_select (struct ata_port*,unsigned int) ;
 int iowrite8 (int,scalar_t__) ;
 int ninja32_set_piomode (struct ata_port*,struct ata_device*) ;

__attribute__((used)) static void ninja32_dev_select(struct ata_port *ap, unsigned int device)
{
 struct ata_device *adev = &ap->link.device[device];
 if (ap->private_data != adev) {
  iowrite8(0xd6, ap->ioaddr.bmdma_addr + 0x1f);
  ata_sff_dev_select(ap, device);
  ninja32_set_piomode(ap, adev);
 }
}
