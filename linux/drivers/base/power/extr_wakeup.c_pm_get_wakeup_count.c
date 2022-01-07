
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFINE_WAIT (int ) ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int *,int *) ;
 int pm_print_active_wakeup_sources () ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 scalar_t__ signal_pending (int ) ;
 int split_counters (unsigned int*,unsigned int*) ;
 int wait ;
 int wakeup_count_wait_queue ;

bool pm_get_wakeup_count(unsigned int *count, bool block)
{
 unsigned int cnt, inpr;

 if (block) {
  DEFINE_WAIT(wait);

  for (;;) {
   prepare_to_wait(&wakeup_count_wait_queue, &wait,
     TASK_INTERRUPTIBLE);
   split_counters(&cnt, &inpr);
   if (inpr == 0 || signal_pending(current))
    break;
   pm_print_active_wakeup_sources();
   schedule();
  }
  finish_wait(&wakeup_count_wait_queue, &wait);
 }

 split_counters(&cnt, &inpr);
 *count = cnt;
 return !inpr;
}
