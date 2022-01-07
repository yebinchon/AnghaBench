
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int arch_spin_unlock (int *) ;
 int local_irq_restore (unsigned long) ;
 int preempt_enable () ;
 TYPE_1__ rtas ;

__attribute__((used)) static void unlock_rtas(unsigned long flags)
{
 arch_spin_unlock(&rtas.lock);
 local_irq_restore(flags);
 preempt_enable();
}
