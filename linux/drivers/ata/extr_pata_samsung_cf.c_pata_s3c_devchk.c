
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_ioports {int lbal_addr; int nsect_addr; } ;
struct ata_port {int host; struct ata_ioports ioaddr; } ;


 int ata_inb (int ,int ) ;
 int ata_outb (int ,int,int ) ;
 int pata_s3c_dev_select (struct ata_port*,unsigned int) ;

__attribute__((used)) static unsigned int pata_s3c_devchk(struct ata_port *ap,
    unsigned int device)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;
 u8 nsect, lbal;

 pata_s3c_dev_select(ap, device);

 ata_outb(ap->host, 0x55, ioaddr->nsect_addr);
 ata_outb(ap->host, 0xaa, ioaddr->lbal_addr);

 ata_outb(ap->host, 0xaa, ioaddr->nsect_addr);
 ata_outb(ap->host, 0x55, ioaddr->lbal_addr);

 ata_outb(ap->host, 0x55, ioaddr->nsect_addr);
 ata_outb(ap->host, 0xaa, ioaddr->lbal_addr);

 nsect = ata_inb(ap->host, ioaddr->nsect_addr);
 lbal = ata_inb(ap->host, ioaddr->lbal_addr);

 if ((nsect == 0x55) && (lbal == 0xaa))
  return 1;

 return 0;
}
