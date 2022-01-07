
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;


 int ata_sff_sync (struct ata_port*) ;
 int ndelay (int) ;

void ata_sff_pause(struct ata_port *ap)
{
 ata_sff_sync(ap);
 ndelay(400);
}
