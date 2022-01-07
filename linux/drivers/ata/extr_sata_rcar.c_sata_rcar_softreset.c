
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_port {int dummy; } ;
struct ata_link {int * device; struct ata_port* ap; } ;


 int DPRINTK (char*,unsigned int) ;
 int ENODEV ;
 int ata_link_err (struct ata_link*,char*,int) ;
 unsigned int ata_sff_dev_classify (int *,unsigned int,int *) ;
 scalar_t__ sata_rcar_ata_devchk (struct ata_port*,int ) ;
 int sata_rcar_bus_softreset (struct ata_port*,unsigned long) ;
 scalar_t__ sata_scr_valid (struct ata_link*) ;

__attribute__((used)) static int sata_rcar_softreset(struct ata_link *link, unsigned int *classes,
          unsigned long deadline)
{
 struct ata_port *ap = link->ap;
 unsigned int devmask = 0;
 int rc;
 u8 err;


 if (sata_rcar_ata_devchk(ap, 0))
  devmask |= 1 << 0;


 DPRINTK("about to softreset, devmask=%x\n", devmask);
 rc = sata_rcar_bus_softreset(ap, deadline);

 if (rc && (rc != -ENODEV || sata_scr_valid(link))) {
  ata_link_err(link, "SRST failed (errno=%d)\n", rc);
  return rc;
 }


 classes[0] = ata_sff_dev_classify(&link->device[0], devmask, &err);

 DPRINTK("classes[0]=%u\n", classes[0]);
 return 0;
}
