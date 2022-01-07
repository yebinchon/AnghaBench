
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int AUXIO_AUX1_MASK ;
 int auxio_lock ;
 scalar_t__ auxio_register ;
 scalar_t__ readl (scalar_t__) ;
 int sbus_readb (scalar_t__) ;
 int sbus_writeb (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void __auxio_rmw(u8 bits_on, u8 bits_off, int ebus)
{
 if (auxio_register) {
  unsigned long flags;
  u8 regval, newval;

  spin_lock_irqsave(&auxio_lock, flags);

  regval = (ebus ?
     (u8) readl(auxio_register) :
     sbus_readb(auxio_register));
  newval = regval | bits_on;
  newval &= ~bits_off;
  if (!ebus)
   newval &= ~AUXIO_AUX1_MASK;
  if (ebus)
   writel((u32) newval, auxio_register);
  else
   sbus_writeb(newval, auxio_register);

  spin_unlock_irqrestore(&auxio_lock, flags);
 }
}
