
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __simpad_write_cs3 () ;
 int cs3_lock ;
 int cs3_shadow ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void simpad_set_cs3_bit(int value)
{
 unsigned long flags;

 spin_lock_irqsave(&cs3_lock, flags);
 cs3_shadow |= value;
 __simpad_write_cs3();
 spin_unlock_irqrestore(&cs3_lock, flags);
}
