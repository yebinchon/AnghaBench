
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ata_queued_cmd {TYPE_2__* dev; } ;
struct TYPE_6__ {int data_addr; } ;
struct ata_port {TYPE_3__ ioaddr; } ;
struct TYPE_5__ {TYPE_1__* link; } ;
struct TYPE_4__ {struct ata_port* ap; } ;


 int READ ;
 int ioread8_rep (int ,unsigned char*,unsigned int) ;
 int iowrite8_rep (int ,unsigned char*,unsigned int) ;

__attribute__((used)) static unsigned int ata_data_xfer_8bit(struct ata_queued_cmd *qc,
    unsigned char *buf, unsigned int buflen, int rw)
{
 struct ata_port *ap = qc->dev->link->ap;

 if (rw == READ)
  ioread8_rep(ap->ioaddr.data_addr, buf, buflen);
 else
  iowrite8_rep(ap->ioaddr.data_addr, buf, buflen);

 return buflen;
}
