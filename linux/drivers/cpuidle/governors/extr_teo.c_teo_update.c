
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct teo_cpu {scalar_t__ sleep_length_ns; scalar_t__ time_span_ns; unsigned int* intervals; scalar_t__ interval_idx; TYPE_2__* states; } ;
struct cpuidle_driver {int state_count; TYPE_1__* states; } ;
struct cpuidle_device {size_t last_state_idx; int cpu; } ;
struct TYPE_4__ {unsigned int early_hits; unsigned int hits; unsigned int misses; } ;
struct TYPE_3__ {unsigned int exit_latency; unsigned int target_residency; } ;


 unsigned int DECAY_SHIFT ;
 scalar_t__ INTERVALS ;
 scalar_t__ PULSE ;
 unsigned int UINT_MAX ;
 unsigned int ktime_to_us (scalar_t__) ;
 struct teo_cpu* per_cpu_ptr (int *,int ) ;
 int teo_cpus ;

__attribute__((used)) static void teo_update(struct cpuidle_driver *drv, struct cpuidle_device *dev)
{
 struct teo_cpu *cpu_data = per_cpu_ptr(&teo_cpus, dev->cpu);
 unsigned int sleep_length_us = ktime_to_us(cpu_data->sleep_length_ns);
 int i, idx_hit = -1, idx_timer = -1;
 unsigned int measured_us;

 if (cpu_data->time_span_ns >= cpu_data->sleep_length_ns) {





  measured_us = UINT_MAX;
 } else {
  unsigned int lat;

  lat = drv->states[dev->last_state_idx].exit_latency;

  measured_us = ktime_to_us(cpu_data->time_span_ns);






  if (measured_us >= lat)
   measured_us -= lat / 2;
  else
   measured_us /= 2;
 }





 for (i = 0; i < drv->state_count; i++) {
  unsigned int early_hits = cpu_data->states[i].early_hits;

  cpu_data->states[i].early_hits -= early_hits >> DECAY_SHIFT;

  if (drv->states[i].target_residency <= sleep_length_us) {
   idx_timer = i;
   if (drv->states[i].target_residency <= measured_us)
    idx_hit = i;
  }
 }
 if (idx_timer >= 0) {
  unsigned int hits = cpu_data->states[idx_timer].hits;
  unsigned int misses = cpu_data->states[idx_timer].misses;

  hits -= hits >> DECAY_SHIFT;
  misses -= misses >> DECAY_SHIFT;

  if (idx_timer > idx_hit) {
   misses += PULSE;
   if (idx_hit >= 0)
    cpu_data->states[idx_hit].early_hits += PULSE;
  } else {
   hits += PULSE;
  }

  cpu_data->states[idx_timer].misses = misses;
  cpu_data->states[idx_timer].hits = hits;
 }





 cpu_data->intervals[cpu_data->interval_idx++] = measured_us;
 if (cpu_data->interval_idx > INTERVALS)
  cpu_data->interval_idx = 0;
}
