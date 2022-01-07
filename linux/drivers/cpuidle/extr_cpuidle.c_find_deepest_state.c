
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_state_usage {scalar_t__ disable; } ;
struct cpuidle_state {unsigned int exit_latency; unsigned int flags; int enter_s2idle; scalar_t__ disabled; } ;
struct cpuidle_driver {int state_count; struct cpuidle_state* states; } ;
struct cpuidle_device {struct cpuidle_state_usage* states_usage; } ;



__attribute__((used)) static int find_deepest_state(struct cpuidle_driver *drv,
         struct cpuidle_device *dev,
         unsigned int max_latency,
         unsigned int forbidden_flags,
         bool s2idle)
{
 unsigned int latency_req = 0;
 int i, ret = 0;

 for (i = 1; i < drv->state_count; i++) {
  struct cpuidle_state *s = &drv->states[i];
  struct cpuidle_state_usage *su = &dev->states_usage[i];

  if (s->disabled || su->disable || s->exit_latency <= latency_req
      || s->exit_latency > max_latency
      || (s->flags & forbidden_flags)
      || (s2idle && !s->enter_s2idle))
   continue;

  latency_req = s->exit_latency;
  ret = i;
 }
 return ret;
}
