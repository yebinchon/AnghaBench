
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kgdb_brkpt_hook ;
 int kgdb_compiled_brkpt_hook ;
 int kgdb_notifier ;
 int kgdb_step_hook ;
 int register_die_notifier (int *) ;
 int register_kernel_break_hook (int *) ;
 int register_kernel_step_hook (int *) ;

int kgdb_arch_init(void)
{
 int ret = register_die_notifier(&kgdb_notifier);

 if (ret != 0)
  return ret;

 register_kernel_break_hook(&kgdb_brkpt_hook);
 register_kernel_break_hook(&kgdb_compiled_brkpt_hook);
 register_kernel_step_hook(&kgdb_step_hook);
 return 0;
}
