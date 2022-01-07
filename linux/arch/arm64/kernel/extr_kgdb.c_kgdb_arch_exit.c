
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kgdb_brkpt_hook ;
 int kgdb_compiled_brkpt_hook ;
 int kgdb_notifier ;
 int kgdb_step_hook ;
 int unregister_die_notifier (int *) ;
 int unregister_kernel_break_hook (int *) ;
 int unregister_kernel_step_hook (int *) ;

void kgdb_arch_exit(void)
{
 unregister_kernel_break_hook(&kgdb_brkpt_hook);
 unregister_kernel_break_hook(&kgdb_compiled_brkpt_hook);
 unregister_kernel_step_hook(&kgdb_step_hook);
 unregister_die_notifier(&kgdb_notifier);
}
