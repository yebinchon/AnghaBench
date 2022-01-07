
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct tpu_priv {int lock; } ;
struct clocksource {int dummy; } ;


 struct tpu_priv* cs_to_priv (struct clocksource*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tpu_get_counter (struct tpu_priv*,unsigned long long*) ;

__attribute__((used)) static u64 tpu_clocksource_read(struct clocksource *cs)
{
 struct tpu_priv *p = cs_to_priv(cs);
 unsigned long flags;
 unsigned long long value;

 raw_spin_lock_irqsave(&p->lock, flags);
 if (tpu_get_counter(p, &value))
  value += 0x100000000;
 raw_spin_unlock_irqrestore(&p->lock, flags);

 return value;
}
