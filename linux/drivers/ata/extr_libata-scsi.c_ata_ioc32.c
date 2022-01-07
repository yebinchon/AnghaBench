
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int flags; int pflags; } ;


 int ATA_FLAG_PIO_DMA ;
 int ATA_PFLAG_PIO32 ;

__attribute__((used)) static int ata_ioc32(struct ata_port *ap)
{
 if (ap->flags & ATA_FLAG_PIO_DMA)
  return 1;
 if (ap->pflags & ATA_PFLAG_PIO32)
  return 1;
 return 0;
}
