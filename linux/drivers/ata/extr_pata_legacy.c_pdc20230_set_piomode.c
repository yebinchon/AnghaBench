
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_port {int dummy; } ;
struct ata_device {int pio_mode; int devno; } ;


 int XFER_PIO_0 ;
 int inb (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int outb (int,int) ;
 int udelay (int) ;

__attribute__((used)) static void pdc20230_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 int tries = 5;
 int pio = adev->pio_mode - XFER_PIO_0;
 u8 rt;
 unsigned long flags;



 local_irq_save(flags);


 do {
  inb(0x1F5);
  outb(inb(0x1F2) | 0x80, 0x1F2);
  inb(0x1F2);
  inb(0x3F6);
  inb(0x3F6);
  inb(0x1F2);
  inb(0x1F2);
 }
 while ((inb(0x1F2) & 0x80) && --tries);

 local_irq_restore(flags);

 outb(inb(0x1F4) & 0x07, 0x1F4);

 rt = inb(0x1F3);
 rt &= 0x07 << (3 * adev->devno);
 if (pio)
  rt |= (1 + 3 * pio) << (3 * adev->devno);

 udelay(100);
 outb(inb(0x1F2) | 0x01, 0x1F2);
 udelay(100);
 inb(0x1F5);

}
