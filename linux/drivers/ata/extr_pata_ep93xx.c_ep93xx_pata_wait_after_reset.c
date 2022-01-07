
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ep93xx_pata_data {int dummy; } ;
struct ata_port {TYPE_2__* ops; TYPE_1__* host; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_4__ {int (* sff_dev_select ) (struct ata_port*,int) ;} ;
struct TYPE_3__ {struct ep93xx_pata_data* private_data; } ;


 int ATA_WAIT_AFTER_RESET ;
 int ENODEV ;
 int IDECTRL_ADDR_LBAL ;
 int IDECTRL_ADDR_NSECT ;
 int ata_msleep (struct ata_port*,int ) ;
 int ata_sff_wait_ready (struct ata_link*,unsigned long) ;
 int ep93xx_pata_read_reg (struct ep93xx_pata_data*,int ) ;
 int msleep (int) ;
 int stub1 (struct ata_port*,int) ;
 int stub2 (struct ata_port*,int) ;
 int stub3 (struct ata_port*,int) ;
 int stub4 (struct ata_port*,int) ;

__attribute__((used)) static int ep93xx_pata_wait_after_reset(struct ata_link *link,
     unsigned int devmask,
     unsigned long deadline)
{
 struct ata_port *ap = link->ap;
 struct ep93xx_pata_data *drv_data = ap->host->private_data;
 unsigned int dev0 = devmask & (1 << 0);
 unsigned int dev1 = devmask & (1 << 1);
 int rc, ret = 0;

 ata_msleep(ap, ATA_WAIT_AFTER_RESET);


 rc = ata_sff_wait_ready(link, deadline);




 if (rc)
  return rc;





 if (dev1) {
  int i;

  ap->ops->sff_dev_select(ap, 1);






  for (i = 0; i < 2; i++) {
   u8 nsect, lbal;

   nsect = ep93xx_pata_read_reg(drv_data,
    IDECTRL_ADDR_NSECT);
   lbal = ep93xx_pata_read_reg(drv_data,
    IDECTRL_ADDR_LBAL);
   if (nsect == 1 && lbal == 1)
    break;
   msleep(50);
  }

  rc = ata_sff_wait_ready(link, deadline);
  if (rc) {
   if (rc != -ENODEV)
    return rc;
   ret = rc;
  }
 }

 ap->ops->sff_dev_select(ap, 0);
 if (dev1)
  ap->ops->sff_dev_select(ap, 1);
 if (dev0)
  ap->ops->sff_dev_select(ap, 0);

 return ret;
}
