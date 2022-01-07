
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;
struct ata_link {struct ata_port* ap; } ;


 int ATA_WAIT_AFTER_RESET ;
 int ata_msleep (struct ata_port*,int ) ;
 int ata_sff_wait_ready (struct ata_link*,unsigned long) ;

__attribute__((used)) static int sata_rcar_wait_after_reset(struct ata_link *link,
          unsigned long deadline)
{
 struct ata_port *ap = link->ap;

 ata_msleep(ap, ATA_WAIT_AFTER_RESET);

 return ata_sff_wait_ready(link, deadline);
}
