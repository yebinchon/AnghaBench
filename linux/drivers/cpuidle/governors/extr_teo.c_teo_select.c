
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct teo_cpu {unsigned int* intervals; TYPE_1__* states; int sleep_length_ns; int time_span_ns; } ;
struct cpuidle_state_usage {scalar_t__ disable; } ;
struct cpuidle_state {unsigned int target_residency; int exit_latency; int flags; scalar_t__ disabled; } ;
struct cpuidle_driver {int state_count; struct cpuidle_state* states; } ;
struct cpuidle_device {int last_state_idx; struct cpuidle_state_usage* states_usage; int cpu; } ;
typedef int ktime_t ;
struct TYPE_2__ {unsigned int early_hits; scalar_t__ hits; scalar_t__ misses; } ;


 int CPUIDLE_FLAG_POLLING ;
 int INTERVALS ;
 unsigned int TICK_USEC ;
 int cpuidle_governor_latency_req (int ) ;
 unsigned int div64_u64 (unsigned int,unsigned int) ;
 unsigned int ktime_to_us (int ) ;
 int local_clock () ;
 struct teo_cpu* per_cpu_ptr (int *,int ) ;
 int teo_cpus ;
 int teo_find_shallower_state (struct cpuidle_driver*,struct cpuidle_device*,int,unsigned int) ;
 int teo_update (struct cpuidle_driver*,struct cpuidle_device*) ;
 int tick_nohz_get_sleep_length (int *) ;
 scalar_t__ tick_nohz_tick_stopped () ;

__attribute__((used)) static int teo_select(struct cpuidle_driver *drv, struct cpuidle_device *dev,
        bool *stop_tick)
{
 struct teo_cpu *cpu_data = per_cpu_ptr(&teo_cpus, dev->cpu);
 int latency_req = cpuidle_governor_latency_req(dev->cpu);
 unsigned int duration_us, count;
 int max_early_idx, constraint_idx, idx, i;
 ktime_t delta_tick;

 if (dev->last_state_idx >= 0) {
  teo_update(drv, dev);
  dev->last_state_idx = -1;
 }

 cpu_data->time_span_ns = local_clock();

 cpu_data->sleep_length_ns = tick_nohz_get_sleep_length(&delta_tick);
 duration_us = ktime_to_us(cpu_data->sleep_length_ns);

 count = 0;
 max_early_idx = -1;
 constraint_idx = drv->state_count;
 idx = -1;

 for (i = 0; i < drv->state_count; i++) {
  struct cpuidle_state *s = &drv->states[i];
  struct cpuidle_state_usage *su = &dev->states_usage[i];

  if (s->disabled || su->disable) {
   if (max_early_idx >= 0 &&
       count < cpu_data->states[i].early_hits)
    count = cpu_data->states[i].early_hits;

   continue;
  }

  if (idx < 0)
   idx = i;

  if (s->target_residency > duration_us)
   break;

  if (s->exit_latency > latency_req && constraint_idx > i)
   constraint_idx = i;

  idx = i;

  if (count < cpu_data->states[i].early_hits &&
      !(tick_nohz_tick_stopped() &&
        drv->states[i].target_residency < TICK_USEC)) {
   count = cpu_data->states[i].early_hits;
   max_early_idx = i;
  }
 }
 if (cpu_data->states[idx].hits <= cpu_data->states[idx].misses &&
     max_early_idx >= 0) {
  idx = max_early_idx;
  duration_us = drv->states[idx].target_residency;
 }





 if (constraint_idx < idx)
  idx = constraint_idx;

 if (idx < 0) {
  idx = 0;
 } else if (idx > 0) {
  u64 sum = 0;

  count = 0;





  for (i = 0; i < INTERVALS; i++) {
   unsigned int val = cpu_data->intervals[i];

   if (val >= duration_us)
    continue;

   count++;
   sum += val;
  }





  if (count > INTERVALS / 2) {
   unsigned int avg_us = div64_u64(sum, count);





   if (!(tick_nohz_tick_stopped() && avg_us < TICK_USEC)) {
    duration_us = avg_us;
    if (drv->states[idx].target_residency > avg_us)
     idx = teo_find_shallower_state(drv, dev,
               idx, avg_us);
   }
  }
 }





 if (((drv->states[idx].flags & CPUIDLE_FLAG_POLLING) ||
     duration_us < TICK_USEC) && !tick_nohz_tick_stopped()) {
  unsigned int delta_tick_us = ktime_to_us(delta_tick);

  *stop_tick = 0;







  if (idx > 0 && drv->states[idx].target_residency > delta_tick_us)
   idx = teo_find_shallower_state(drv, dev, idx, delta_tick_us);
 }

 return idx;
}
