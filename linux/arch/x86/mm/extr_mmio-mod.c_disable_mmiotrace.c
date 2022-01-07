
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int atomic_dec (int *) ;
 int clear_trace_list () ;
 int is_enabled () ;
 int kmmio_cleanup () ;
 int leave_uniprocessor () ;
 int mmiotrace_enabled ;
 int mmiotrace_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int trace_lock ;

void disable_mmiotrace(void)
{
 mutex_lock(&mmiotrace_mutex);
 if (!is_enabled())
  goto out;

 spin_lock_irq(&trace_lock);
 atomic_dec(&mmiotrace_enabled);
 BUG_ON(is_enabled());
 spin_unlock_irq(&trace_lock);

 clear_trace_list();
 leave_uniprocessor();
 kmmio_cleanup();
 pr_info("disabled.\n");
out:
 mutex_unlock(&mmiotrace_mutex);
}
