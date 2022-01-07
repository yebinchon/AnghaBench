
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct em_sti_priv {int lock; } ;


 int STI_COMPA_H ;
 int STI_COMPA_L ;
 int STI_INTENCLR ;
 int STI_INTENSET ;
 int STI_INTFFCLR ;
 int em_sti_write (struct em_sti_priv*,int ,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u64 em_sti_set_next(struct em_sti_priv *p, u64 next)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&p->lock, flags);


 em_sti_write(p, STI_INTENCLR, 1);


 em_sti_write(p, STI_COMPA_H, next >> 32);
 em_sti_write(p, STI_COMPA_L, next & 0xffffffff);


 em_sti_write(p, STI_INTFFCLR, 1);


 em_sti_write(p, STI_INTENSET, 1);

 raw_spin_unlock_irqrestore(&p->lock, flags);

 return next;
}
