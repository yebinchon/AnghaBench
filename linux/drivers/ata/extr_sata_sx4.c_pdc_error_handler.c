
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int pflags; } ;


 int ATA_PFLAG_FROZEN ;
 int ata_sff_error_handler (struct ata_port*) ;
 int pdc_reset_port (struct ata_port*) ;

__attribute__((used)) static void pdc_error_handler(struct ata_port *ap)
{
 if (!(ap->pflags & ATA_PFLAG_FROZEN))
  pdc_reset_port(ap);

 ata_sff_error_handler(ap);
}
