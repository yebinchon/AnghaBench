
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 int events_check_enabled ;
 int events_lock ;
 int pm_abort_suspend ;
 int pm_pr_dbg (char*) ;
 int pm_print_active_wakeup_sources () ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int saved_count ;
 int split_counters (unsigned int*,unsigned int*) ;

bool pm_wakeup_pending(void)
{
 unsigned long flags;
 bool ret = 0;

 raw_spin_lock_irqsave(&events_lock, flags);
 if (events_check_enabled) {
  unsigned int cnt, inpr;

  split_counters(&cnt, &inpr);
  ret = (cnt != saved_count || inpr > 0);
  events_check_enabled = !ret;
 }
 raw_spin_unlock_irqrestore(&events_lock, flags);

 if (ret) {
  pm_pr_dbg("Wakeup pending, aborting suspend\n");
  pm_print_active_wakeup_sources();
 }

 return ret || atomic_read(&pm_abort_suspend) > 0;
}
