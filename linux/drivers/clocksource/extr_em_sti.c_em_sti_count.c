
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct em_sti_priv {int lock; } ;


 int STI_COUNT_H ;
 int STI_COUNT_L ;
 int em_sti_read (struct em_sti_priv*,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u64 em_sti_count(struct em_sti_priv *p)
{
 u64 ticks;
 unsigned long flags;






 raw_spin_lock_irqsave(&p->lock, flags);
 ticks = (u64)(em_sti_read(p, STI_COUNT_H) & 0xffff) << 32;
 ticks |= em_sti_read(p, STI_COUNT_L);
 raw_spin_unlock_irqrestore(&p->lock, flags);

 return ticks;
}
