
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __mcheck_cpu_init_timer () ;
 int cmci_recheck () ;
 int cmci_reenable () ;
 int cpu_info ;
 int mce_available (int ) ;
 int raw_cpu_ptr (int *) ;

__attribute__((used)) static void mce_enable_ce(void *all)
{
 if (!mce_available(raw_cpu_ptr(&cpu_info)))
  return;
 cmci_reenable();
 cmci_recheck();
 if (all)
  __mcheck_cpu_init_timer();
}
