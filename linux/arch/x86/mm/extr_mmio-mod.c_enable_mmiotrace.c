
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_inc (int *) ;
 int enter_uniprocessor () ;
 scalar_t__ is_enabled () ;
 int kmmio_init () ;
 int mmiotrace_enabled ;
 int mmiotrace_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ nommiotrace ;
 int pr_info (char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int trace_lock ;

void enable_mmiotrace(void)
{
 mutex_lock(&mmiotrace_mutex);
 if (is_enabled())
  goto out;

 if (nommiotrace)
  pr_info("MMIO tracing disabled.\n");
 kmmio_init();
 enter_uniprocessor();
 spin_lock_irq(&trace_lock);
 atomic_inc(&mmiotrace_enabled);
 spin_unlock_irq(&trace_lock);
 pr_info("enabled.\n");
out:
 mutex_unlock(&mmiotrace_mutex);
}
