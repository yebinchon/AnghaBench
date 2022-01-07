
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ altstatus_addr; } ;
struct ata_port {TYPE_2__* ops; TYPE_1__ ioaddr; } ;
struct TYPE_4__ {int (* sff_check_status ) (struct ata_port*) ;scalar_t__ sff_check_altstatus; } ;


 int ATA_BUSY ;
 int ata_sff_altstatus (struct ata_port*) ;
 int stub1 (struct ata_port*) ;

__attribute__((used)) static u8 ata_sff_irq_status(struct ata_port *ap)
{
 u8 status;

 if (ap->ops->sff_check_altstatus || ap->ioaddr.altstatus_addr) {
  status = ata_sff_altstatus(ap);

  if (status & ATA_BUSY)
   return status;
 }

 status = ap->ops->sff_check_status(ap);
 return status;
}
