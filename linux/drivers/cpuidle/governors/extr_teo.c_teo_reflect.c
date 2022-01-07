
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct teo_cpu {scalar_t__ sleep_length_ns; scalar_t__ time_span_ns; } ;
struct cpuidle_device {int last_state_idx; int poll_time_limit; int cpu; } ;


 scalar_t__ TICK_NSEC ;
 scalar_t__ local_clock () ;
 struct teo_cpu* per_cpu_ptr (int *,int ) ;
 int teo_cpus ;
 scalar_t__ tick_nohz_idle_got_tick () ;

__attribute__((used)) static void teo_reflect(struct cpuidle_device *dev, int state)
{
 struct teo_cpu *cpu_data = per_cpu_ptr(&teo_cpus, dev->cpu);

 dev->last_state_idx = state;





 if (dev->poll_time_limit ||
     (tick_nohz_idle_got_tick() && cpu_data->sleep_length_ns > TICK_NSEC)) {
  dev->poll_time_limit = 0;
  cpu_data->time_span_ns = cpu_data->sleep_length_ns;
 } else {
  cpu_data->time_span_ns = local_clock() - cpu_data->time_span_ns;
 }
}
