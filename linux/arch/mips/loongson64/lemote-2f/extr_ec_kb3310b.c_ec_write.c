
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EC_IO_PORT_DATA ;
 int EC_IO_PORT_HIGH ;
 int EC_IO_PORT_LOW ;
 int inb (int ) ;
 int index_access_lock ;
 int outb (unsigned char,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ec_write(unsigned short addr, unsigned char val)
{
 unsigned long flags;

 spin_lock_irqsave(&index_access_lock, flags);
 outb((addr & 0xff00) >> 8, EC_IO_PORT_HIGH);
 outb((addr & 0x00ff), EC_IO_PORT_LOW);
 outb(val, EC_IO_PORT_DATA);

 inb(EC_IO_PORT_DATA);
 spin_unlock_irqrestore(&index_access_lock, flags);
}
