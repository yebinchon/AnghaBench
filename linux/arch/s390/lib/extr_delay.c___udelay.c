
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __udelay_disabled (unsigned long long) ;
 int __udelay_enabled (unsigned long long) ;
 int _local_bh_enable () ;
 scalar_t__ in_irq () ;
 scalar_t__ in_softirq () ;
 int local_bh_disable () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ raw_irqs_disabled_flags (unsigned long) ;

void __udelay(unsigned long long usecs)
{
 unsigned long flags;

 preempt_disable();
 local_irq_save(flags);
 if (in_irq()) {
  __udelay_disabled(usecs);
  goto out;
 }
 if (in_softirq()) {
  if (raw_irqs_disabled_flags(flags))
   __udelay_disabled(usecs);
  else
   __udelay_enabled(usecs);
  goto out;
 }
 if (raw_irqs_disabled_flags(flags)) {
  local_bh_disable();
  __udelay_disabled(usecs);
  _local_bh_enable();
  goto out;
 }
 __udelay_enabled(usecs);
out:
 local_irq_restore(flags);
 preempt_enable();
}
