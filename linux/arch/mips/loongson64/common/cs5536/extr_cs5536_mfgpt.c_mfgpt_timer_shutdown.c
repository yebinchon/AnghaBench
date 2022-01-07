
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ clockevent_state_oneshot (struct clock_event_device*) ;
 scalar_t__ clockevent_state_periodic (struct clock_event_device*) ;
 int disable_mfgpt0_counter () ;
 int mfgpt_lock ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static int mfgpt_timer_shutdown(struct clock_event_device *evt)
{
 if (clockevent_state_periodic(evt) || clockevent_state_oneshot(evt)) {
  raw_spin_lock(&mfgpt_lock);
  disable_mfgpt0_counter();
  raw_spin_unlock(&mfgpt_lock);
 }

 return 0;
}
