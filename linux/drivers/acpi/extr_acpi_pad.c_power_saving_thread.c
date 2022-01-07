
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sched_param {int sched_priority; } ;


 int HZ ;
 int SCHED_RR ;
 int current ;
 int exit_round_robin (unsigned int) ;
 int idle_pct ;
 int jiffies ;
 int kthread_should_stop () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int mark_tsc_unstable (char*) ;
 int mwait_idle_with_hints (int ,int) ;
 int need_resched () ;
 int power_saving_mwait_eax ;
 int round_robin_cpu (unsigned int) ;
 int round_robin_time ;
 int sched_setscheduler (int ,int ,struct sched_param*) ;
 int schedule () ;
 int schedule_timeout_killable (int) ;
 int start_critical_timings () ;
 int stop_critical_timings () ;
 int tick_broadcast_enable () ;
 int tick_broadcast_enter () ;
 int tick_broadcast_exit () ;
 scalar_t__ time_before (unsigned long,int) ;
 scalar_t__ tsc_detected_unstable ;
 int tsc_marked_unstable ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int power_saving_thread(void *data)
{
 struct sched_param param = {.sched_priority = 1};
 int do_sleep;
 unsigned int tsk_index = (unsigned long)data;
 u64 last_jiffies = 0;

 sched_setscheduler(current, SCHED_RR, &param);

 while (!kthread_should_stop()) {
  unsigned long expire_time;


  expire_time = last_jiffies + round_robin_time * HZ;
  if (time_before(expire_time, jiffies)) {
   last_jiffies = jiffies;
   round_robin_cpu(tsk_index);
  }

  do_sleep = 0;

  expire_time = jiffies + HZ * (100 - idle_pct) / 100;

  while (!need_resched()) {
   if (tsc_detected_unstable && !tsc_marked_unstable) {

    mark_tsc_unstable("TSC halts in idle");
    tsc_marked_unstable = 1;
   }
   local_irq_disable();
   tick_broadcast_enable();
   tick_broadcast_enter();
   stop_critical_timings();

   mwait_idle_with_hints(power_saving_mwait_eax, 1);

   start_critical_timings();
   tick_broadcast_exit();
   local_irq_enable();

   if (time_before(expire_time, jiffies)) {
    do_sleep = 1;
    break;
   }
  }
  if (unlikely(do_sleep))
   schedule_timeout_killable(HZ * idle_pct / 100);





  if (unlikely(need_resched()))
   schedule();
 }

 exit_round_robin(tsk_index);
 return 0;
}
