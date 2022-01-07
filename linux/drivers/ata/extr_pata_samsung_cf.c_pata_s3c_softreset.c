
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * device; } ;
struct ata_port {TYPE_1__ link; } ;
struct ata_link {struct ata_port* ap; } ;


 int ENODEV ;
 int ata_link_err (struct ata_link*,char*,int) ;
 unsigned int ata_sff_dev_classify (int *,unsigned int,int *) ;
 int pata_s3c_bus_softreset (struct ata_port*,unsigned long) ;
 int pata_s3c_dev_select (struct ata_port*,int ) ;
 scalar_t__ pata_s3c_devchk (struct ata_port*,int ) ;

__attribute__((used)) static int pata_s3c_softreset(struct ata_link *link, unsigned int *classes,
    unsigned long deadline)
{
 struct ata_port *ap = link->ap;
 unsigned int devmask = 0;
 int rc;
 u8 err;


 if (pata_s3c_devchk(ap, 0))
  devmask |= (1 << 0);


 pata_s3c_dev_select(ap, 0);


 rc = pata_s3c_bus_softreset(ap, deadline);

 if (rc && rc != -ENODEV) {
  ata_link_err(link, "SRST failed (errno=%d)\n", rc);
  return rc;
 }


 classes[0] = ata_sff_dev_classify(&ap->link.device[0],
       devmask & (1 << 0), &err);

 return 0;
}
