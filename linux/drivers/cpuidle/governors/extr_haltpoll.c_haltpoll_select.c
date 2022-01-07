
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int state_count; } ;
struct cpuidle_device {scalar_t__ poll_limit_ns; scalar_t__ last_state_idx; int poll_time_limit; int cpu; } ;


 int cpuidle_governor_latency_req (int ) ;

__attribute__((used)) static int haltpoll_select(struct cpuidle_driver *drv,
      struct cpuidle_device *dev,
      bool *stop_tick)
{
 int latency_req = cpuidle_governor_latency_req(dev->cpu);

 if (!drv->state_count || latency_req == 0) {
  *stop_tick = 0;
  return 0;
 }

 if (dev->poll_limit_ns == 0)
  return 1;


 if (dev->last_state_idx == 0) {

  if (dev->poll_time_limit == 1)
   return 1;

  *stop_tick = 0;

  return 0;
 }

 *stop_tick = 0;

 return 0;
}
