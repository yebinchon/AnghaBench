
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bmdma_addr; } ;
struct ata_port {int port_no; TYPE_1__ ioaddr; } ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 int ATA_CBL_SATA ;
 int BUG () ;
 int ioread8 (int ) ;

__attribute__((used)) static int marvell_cable_detect(struct ata_port *ap)
{

 switch(ap->port_no)
 {
 case 0:
  if (ioread8(ap->ioaddr.bmdma_addr + 1) & 1)
   return ATA_CBL_PATA40;
  return ATA_CBL_PATA80;
 case 1:
  return ATA_CBL_SATA;
 }

 BUG();
 return 0;
}
