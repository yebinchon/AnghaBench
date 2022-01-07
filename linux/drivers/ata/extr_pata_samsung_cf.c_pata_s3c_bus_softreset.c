
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_ioports {int ctl_addr; } ;
struct ata_port {int ctl; int last_ctl; int link; int host; struct ata_ioports ioaddr; } ;


 int ATA_SRST ;
 int ata_outb (int ,int,int ) ;
 int pata_s3c_wait_after_reset (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int pata_s3c_bus_softreset(struct ata_port *ap,
  unsigned long deadline)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;


 ata_outb(ap->host, ap->ctl, ioaddr->ctl_addr);
 udelay(20);
 ata_outb(ap->host, ap->ctl | ATA_SRST, ioaddr->ctl_addr);
 udelay(20);
 ata_outb(ap->host, ap->ctl, ioaddr->ctl_addr);
 ap->last_ctl = ap->ctl;

 return pata_s3c_wait_after_reset(&ap->link, deadline);
}
