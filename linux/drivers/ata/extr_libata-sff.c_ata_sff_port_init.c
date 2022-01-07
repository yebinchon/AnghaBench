
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int last_ctl; int ctl; int sff_pio_task; } ;


 int ATA_DEVCTL_OBS ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int ata_sff_pio_task ;

void ata_sff_port_init(struct ata_port *ap)
{
 INIT_DELAYED_WORK(&ap->sff_pio_task, ata_sff_pio_task);
 ap->ctl = ATA_DEVCTL_OBS;
 ap->last_ctl = 0xFF;
}
