
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eh_info; } ;
struct ata_port {TYPE_1__ link; } ;


 int DPRINTK (char*) ;
 int ata_ehi_hotplugged (int *) ;
 int ata_port_freeze (struct ata_port*) ;

void sata_oxnas_checkforhotplug(struct ata_port *ap)
{
 DPRINTK("ENTER\n");

 ata_ehi_hotplugged(&ap->link.eh_info);
 ata_port_freeze(ap);
}
