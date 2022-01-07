
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hash_value_early_read ;
 int pm_trace_nb ;
 int read_magic_time () ;
 int register_pm_notifier (int *) ;

__attribute__((used)) static int early_resume_init(void)
{
 hash_value_early_read = read_magic_time();
 register_pm_notifier(&pm_trace_nb);
 return 0;
}
