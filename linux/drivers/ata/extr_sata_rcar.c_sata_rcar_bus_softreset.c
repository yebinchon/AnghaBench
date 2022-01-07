
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_ioports {int ctl_addr; } ;
struct ata_port {int ctl; int last_ctl; int link; int print_id; struct ata_ioports ioaddr; } ;


 int ATA_SRST ;
 int DPRINTK (char*,int ) ;
 int iowrite32 (int,int ) ;
 int sata_rcar_wait_after_reset (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int sata_rcar_bus_softreset(struct ata_port *ap, unsigned long deadline)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;

 DPRINTK("ata%u: bus reset via SRST\n", ap->print_id);


 iowrite32(ap->ctl, ioaddr->ctl_addr);
 udelay(20);
 iowrite32(ap->ctl | ATA_SRST, ioaddr->ctl_addr);
 udelay(20);
 iowrite32(ap->ctl, ioaddr->ctl_addr);
 ap->last_ctl = ap->ctl;


 return sata_rcar_wait_after_reset(&ap->link, deadline);
}
