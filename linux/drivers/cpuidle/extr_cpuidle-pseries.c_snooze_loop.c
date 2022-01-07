
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int HMT_low () ;
 int HMT_medium () ;
 int HMT_very_low () ;
 int TIF_POLLING_NRFLAG ;
 int clear_thread_flag (int ) ;
 scalar_t__ get_tb () ;
 int idle_loop_epilog (unsigned long) ;
 int idle_loop_prolog (unsigned long*) ;
 scalar_t__ likely (int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int need_resched () ;
 int set_thread_flag (int ) ;
 int smp_mb () ;
 scalar_t__ snooze_timeout ;
 int snooze_timeout_en ;

__attribute__((used)) static int snooze_loop(struct cpuidle_device *dev,
   struct cpuidle_driver *drv,
   int index)
{
 unsigned long in_purr;
 u64 snooze_exit_time;

 set_thread_flag(TIF_POLLING_NRFLAG);

 idle_loop_prolog(&in_purr);
 local_irq_enable();
 snooze_exit_time = get_tb() + snooze_timeout;

 while (!need_resched()) {
  HMT_low();
  HMT_very_low();
  if (likely(snooze_timeout_en) && get_tb() > snooze_exit_time) {





   clear_thread_flag(TIF_POLLING_NRFLAG);
   smp_mb();
   break;
  }
 }

 HMT_medium();
 clear_thread_flag(TIF_POLLING_NRFLAG);

 local_irq_disable();

 idle_loop_epilog(in_purr);

 return index;
}
