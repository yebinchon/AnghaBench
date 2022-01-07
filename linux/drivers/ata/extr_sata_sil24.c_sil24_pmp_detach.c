
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int flags; } ;


 int ATA_FLAG_NCQ ;
 int sil24_config_pmp (struct ata_port*,int ) ;
 int sil24_init_port (struct ata_port*) ;

__attribute__((used)) static void sil24_pmp_detach(struct ata_port *ap)
{
 sil24_init_port(ap);
 sil24_config_pmp(ap, 0);

 ap->flags |= ATA_FLAG_NCQ;
}
