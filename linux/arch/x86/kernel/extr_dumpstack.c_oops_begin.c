
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_spin_lock (int *) ;
 int arch_spin_trylock (int *) ;
 int bust_spinlocks (int) ;
 int console_verbose () ;
 int die_lock ;
 int die_nest_count ;
 int die_owner ;
 int oops_enter () ;
 int raw_local_irq_save (unsigned long) ;
 int smp_processor_id () ;

unsigned long oops_begin(void)
{
 int cpu;
 unsigned long flags;

 oops_enter();


 raw_local_irq_save(flags);
 cpu = smp_processor_id();
 if (!arch_spin_trylock(&die_lock)) {
  if (cpu == die_owner)
                                            ;
  else
   arch_spin_lock(&die_lock);
 }
 die_nest_count++;
 die_owner = cpu;
 console_verbose();
 bust_spinlocks(1);
 return flags;
}
