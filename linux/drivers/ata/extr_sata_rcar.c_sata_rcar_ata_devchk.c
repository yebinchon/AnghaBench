
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_ioports {int lbal_addr; int nsect_addr; } ;
struct ata_port {struct ata_ioports ioaddr; } ;


 int ioread32 (int ) ;
 int iowrite32 (int,int ) ;
 int sata_rcar_dev_select (struct ata_port*,unsigned int) ;

__attribute__((used)) static unsigned int sata_rcar_ata_devchk(struct ata_port *ap,
      unsigned int device)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;
 u8 nsect, lbal;

 sata_rcar_dev_select(ap, device);

 iowrite32(0x55, ioaddr->nsect_addr);
 iowrite32(0xaa, ioaddr->lbal_addr);

 iowrite32(0xaa, ioaddr->nsect_addr);
 iowrite32(0x55, ioaddr->lbal_addr);

 iowrite32(0x55, ioaddr->nsect_addr);
 iowrite32(0xaa, ioaddr->lbal_addr);

 nsect = ioread32(ioaddr->nsect_addr);
 lbal = ioread32(ioaddr->lbal_addr);

 if (nsect == 0x55 && lbal == 0xaa)
  return 1;

 return 0;
}
