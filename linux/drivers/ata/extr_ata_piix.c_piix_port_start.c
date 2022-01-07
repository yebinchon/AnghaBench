
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int flags; int pflags; } ;


 int ATA_PFLAG_PIO32 ;
 int ATA_PFLAG_PIO32CHANGE ;
 int PIIX_FLAG_PIO16 ;
 int ata_bmdma_port_start (struct ata_port*) ;

__attribute__((used)) static int piix_port_start(struct ata_port *ap)
{
 if (!(ap->flags & PIIX_FLAG_PIO16))
  ap->pflags |= ATA_PFLAG_PIO32 | ATA_PFLAG_PIO32CHANGE;

 return ata_bmdma_port_start(ap);
}
