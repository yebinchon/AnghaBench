
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char AUXIO_ORMEIN4M ;
 int auxio_lock ;
 int auxio_register ;
 int panic (char*) ;
 unsigned char sbus_readb (int ) ;
 int sbus_writeb (unsigned char,int ) ;
 int sparc_cpu_model ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;



void set_auxio(unsigned char bits_on, unsigned char bits_off)
{
 unsigned char regval;
 unsigned long flags;
 spin_lock_irqsave(&auxio_lock, flags);
 switch (sparc_cpu_model) {
 case 128:
  if(!auxio_register)
   break;
  regval = sbus_readb(auxio_register);
  sbus_writeb(((regval | bits_on) & ~bits_off) | AUXIO_ORMEIN4M,
   auxio_register);
  break;
 case 129:
  break;
 default:
  panic("Can't set AUXIO register on this machine.");
 }
 spin_unlock_irqrestore(&auxio_lock, flags);
}
