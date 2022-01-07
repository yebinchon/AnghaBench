
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_port {unsigned int flags; TYPE_1__* ops; } ;
struct ata_link {int * device; struct ata_port* ap; } ;
struct TYPE_2__ {int (* sff_dev_select ) (struct ata_port*,int ) ;} ;


 unsigned int ATA_FLAG_SLAVE_POSS ;
 int DPRINTK (char*,...) ;
 int ENODEV ;
 int ata_bus_softreset (struct ata_port*,unsigned int,unsigned long) ;
 scalar_t__ ata_devchk (struct ata_port*,int) ;
 int ata_link_err (struct ata_link*,char*,int) ;
 unsigned int ata_sff_dev_classify (int *,unsigned int,int*) ;
 scalar_t__ sata_scr_valid (struct ata_link*) ;
 int stub1 (struct ata_port*,int ) ;

int ata_sff_softreset(struct ata_link *link, unsigned int *classes,
        unsigned long deadline)
{
 struct ata_port *ap = link->ap;
 unsigned int slave_possible = ap->flags & ATA_FLAG_SLAVE_POSS;
 unsigned int devmask = 0;
 int rc;
 u8 err;

 DPRINTK("ENTER\n");


 if (ata_devchk(ap, 0))
  devmask |= (1 << 0);
 if (slave_possible && ata_devchk(ap, 1))
  devmask |= (1 << 1);


 ap->ops->sff_dev_select(ap, 0);


 DPRINTK("about to softreset, devmask=%x\n", devmask);
 rc = ata_bus_softreset(ap, devmask, deadline);

 if (rc && (rc != -ENODEV || sata_scr_valid(link))) {
  ata_link_err(link, "SRST failed (errno=%d)\n", rc);
  return rc;
 }


 classes[0] = ata_sff_dev_classify(&link->device[0],
       devmask & (1 << 0), &err);
 if (slave_possible && err != 0x81)
  classes[1] = ata_sff_dev_classify(&link->device[1],
        devmask & (1 << 1), &err);

 DPRINTK("EXIT, classes[0]=%u [1]=%u\n", classes[0], classes[1]);
 return 0;
}
