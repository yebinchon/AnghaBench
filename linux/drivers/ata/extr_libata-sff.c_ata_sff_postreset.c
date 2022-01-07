
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ctl_addr; } ;
struct ata_port {int ctl; int last_ctl; TYPE_2__ ioaddr; TYPE_1__* ops; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_3__ {scalar_t__ sff_set_devctl; int (* sff_dev_select ) (struct ata_port*,int) ;} ;


 unsigned int ATA_DEV_NONE ;
 int DPRINTK (char*) ;
 int ata_sff_set_devctl (struct ata_port*,int ) ;
 int ata_std_postreset (struct ata_link*,unsigned int*) ;
 int stub1 (struct ata_port*,int) ;
 int stub2 (struct ata_port*,int) ;

void ata_sff_postreset(struct ata_link *link, unsigned int *classes)
{
 struct ata_port *ap = link->ap;

 ata_std_postreset(link, classes);


 if (classes[0] != ATA_DEV_NONE)
  ap->ops->sff_dev_select(ap, 1);
 if (classes[1] != ATA_DEV_NONE)
  ap->ops->sff_dev_select(ap, 0);


 if (classes[0] == ATA_DEV_NONE && classes[1] == ATA_DEV_NONE) {
  DPRINTK("EXIT, no device\n");
  return;
 }


 if (ap->ops->sff_set_devctl || ap->ioaddr.ctl_addr) {
  ata_sff_set_devctl(ap, ap->ctl);
  ap->last_ctl = ap->ctl;
 }
}
