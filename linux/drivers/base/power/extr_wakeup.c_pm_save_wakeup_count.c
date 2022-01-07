
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int events_check_enabled ;
 int events_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int saved_count ;
 int split_counters (unsigned int*,unsigned int*) ;

bool pm_save_wakeup_count(unsigned int count)
{
 unsigned int cnt, inpr;
 unsigned long flags;

 events_check_enabled = 0;
 raw_spin_lock_irqsave(&events_lock, flags);
 split_counters(&cnt, &inpr);
 if (cnt == count && inpr == 0) {
  saved_count = count;
  events_check_enabled = 1;
 }
 raw_spin_unlock_irqrestore(&events_lock, flags);
 return events_check_enabled;
}
