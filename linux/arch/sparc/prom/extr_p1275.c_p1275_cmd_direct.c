
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PIL_NMI ;
 int local_irq_restore (unsigned long) ;
 int local_save_flags (unsigned long) ;
 int prom_cif_direct (unsigned long*) ;
 int prom_entry_lock ;
 int prom_world (int) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

void p1275_cmd_direct(unsigned long *args)
{
 unsigned long flags;

 local_save_flags(flags);
 local_irq_restore((unsigned long)PIL_NMI);
 raw_spin_lock(&prom_entry_lock);

 prom_world(1);
 prom_cif_direct(args);
 prom_world(0);

 raw_spin_unlock(&prom_entry_lock);
 local_irq_restore(flags);
}
