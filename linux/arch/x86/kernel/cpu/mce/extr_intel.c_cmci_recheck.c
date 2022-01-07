
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmci_supported (int*) ;
 int cpu_info ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int machine_check_poll (int ,int ) ;
 int mce_available (int ) ;
 int mce_banks_owned ;
 int raw_cpu_ptr (int *) ;
 int this_cpu_ptr (int *) ;

void cmci_recheck(void)
{
 unsigned long flags;
 int banks;

 if (!mce_available(raw_cpu_ptr(&cpu_info)) || !cmci_supported(&banks))
  return;

 local_irq_save(flags);
 machine_check_poll(0, this_cpu_ptr(&mce_banks_owned));
 local_irq_restore(flags);
}
