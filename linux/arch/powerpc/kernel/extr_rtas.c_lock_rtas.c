
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int arch_spin_lock (int *) ;
 int local_irq_save (unsigned long) ;
 int preempt_disable () ;
 TYPE_1__ rtas ;

__attribute__((used)) static unsigned long lock_rtas(void)
{
 unsigned long flags;

 local_irq_save(flags);
 preempt_disable();
 arch_spin_lock(&rtas.lock);
 return flags;
}
