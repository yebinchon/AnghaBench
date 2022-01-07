
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __mcheck_cpu_init_clear_banks () ;
 int __mcheck_cpu_init_generic () ;
 int __mcheck_cpu_init_timer () ;
 int cpu_info ;
 int mce_available (int ) ;
 int raw_cpu_ptr (int *) ;

__attribute__((used)) static void mce_cpu_restart(void *data)
{
 if (!mce_available(raw_cpu_ptr(&cpu_info)))
  return;
 __mcheck_cpu_init_generic();
 __mcheck_cpu_init_clear_banks();
 __mcheck_cpu_init_timer();
}
