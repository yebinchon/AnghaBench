
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int HMT_medium () ;
 int HMT_very_low () ;
 int TIF_POLLING_NRFLAG ;
 int clear_thread_flag (int ) ;
 scalar_t__ get_snooze_timeout (struct cpuidle_device*,struct cpuidle_driver*,int) ;
 scalar_t__ get_tb () ;
 scalar_t__ likely (int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int need_resched () ;
 int ppc64_runlatch_off () ;
 int ppc64_runlatch_on () ;
 int set_thread_flag (int ) ;
 int smp_mb () ;
 int snooze_timeout_en ;

__attribute__((used)) static int snooze_loop(struct cpuidle_device *dev,
   struct cpuidle_driver *drv,
   int index)
{
 u64 snooze_exit_time;

 set_thread_flag(TIF_POLLING_NRFLAG);

 local_irq_enable();

 snooze_exit_time = get_tb() + get_snooze_timeout(dev, drv, index);
 ppc64_runlatch_off();
 HMT_very_low();
 while (!need_resched()) {
  if (likely(snooze_timeout_en) && get_tb() > snooze_exit_time) {





   clear_thread_flag(TIF_POLLING_NRFLAG);
   smp_mb();
   break;
  }
 }

 HMT_medium();
 ppc64_runlatch_on();
 clear_thread_flag(TIF_POLLING_NRFLAG);

 local_irq_disable();

 return index;
}
