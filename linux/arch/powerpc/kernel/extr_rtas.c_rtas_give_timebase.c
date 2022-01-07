
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int barrier () ;
 scalar_t__ get_tb () ;
 int hard_irq_disable () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int rtas_call (int ,int ,int,int *) ;
 int rtas_token (char*) ;
 scalar_t__ timebase ;
 int timebase_lock ;

void rtas_give_timebase(void)
{
 unsigned long flags;

 local_irq_save(flags);
 hard_irq_disable();
 arch_spin_lock(&timebase_lock);
 rtas_call(rtas_token("freeze-time-base"), 0, 1, ((void*)0));
 timebase = get_tb();
 arch_spin_unlock(&timebase_lock);

 while (timebase)
  barrier();
 rtas_call(rtas_token("thaw-time-base"), 0, 1, ((void*)0));
 local_irq_restore(flags);
}
