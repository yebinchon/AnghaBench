
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (unsigned long) ;
 int outb (int ,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int winbond_lock ;

__attribute__((used)) static u8 winbond_readcfg(unsigned long port, u8 reg)
{
 u8 val;

 unsigned long flags;
 spin_lock_irqsave(&winbond_lock, flags);
 outb(reg, port + 0x01);
 val = inb(port + 0x02);
 spin_unlock_irqrestore(&winbond_lock, flags);

 return val;
}
