
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu_device {unsigned int next_timer_us; unsigned int* correction_factor; size_t bucket; unsigned int* intervals; scalar_t__ interval_ptr; scalar_t__ tick_wakeup; } ;
struct cpuidle_state {int flags; int exit_latency; } ;
struct cpuidle_driver {struct cpuidle_state* states; } ;
struct cpuidle_device {int last_state_idx; unsigned int last_residency; scalar_t__ poll_time_limit; } ;


 int CPUIDLE_FLAG_POLLING ;
 unsigned int DECAY ;
 scalar_t__ INTERVALS ;
 int MAX_INTERESTING ;
 unsigned int RESOLUTION ;
 unsigned int TICK_USEC ;
 int menu_devices ;
 struct menu_device* this_cpu_ptr (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void menu_update(struct cpuidle_driver *drv, struct cpuidle_device *dev)
{
 struct menu_device *data = this_cpu_ptr(&menu_devices);
 int last_idx = dev->last_state_idx;
 struct cpuidle_state *target = &drv->states[last_idx];
 unsigned int measured_us;
 unsigned int new_factor;
 if (data->tick_wakeup && data->next_timer_us > TICK_USEC) {
  measured_us = 9 * MAX_INTERESTING / 10;
 } else if ((drv->states[last_idx].flags & CPUIDLE_FLAG_POLLING) &&
     dev->poll_time_limit) {







  measured_us = data->next_timer_us;
 } else {

  measured_us = dev->last_residency;


  if (measured_us > 2 * target->exit_latency)
   measured_us -= target->exit_latency;
  else
   measured_us /= 2;
 }


 if (measured_us > data->next_timer_us)
  measured_us = data->next_timer_us;


 new_factor = data->correction_factor[data->bucket];
 new_factor -= new_factor / DECAY;

 if (data->next_timer_us > 0 && measured_us < MAX_INTERESTING)
  new_factor += RESOLUTION * measured_us / data->next_timer_us;
 else




  new_factor += RESOLUTION;







 if (DECAY == 1 && unlikely(new_factor == 0))
  new_factor = 1;

 data->correction_factor[data->bucket] = new_factor;


 data->intervals[data->interval_ptr++] = measured_us;
 if (data->interval_ptr >= INTERVALS)
  data->interval_ptr = 0;
}
