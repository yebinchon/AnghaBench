
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpuidle_state_usage {scalar_t__ disable; } ;
struct cpuidle_state {int target_residency; scalar_t__ disabled; } ;
struct cpuidle_driver {int state_count; struct cpuidle_state* states; } ;
struct cpuidle_device {struct cpuidle_state_usage* states_usage; } ;


 int default_snooze_timeout ;
 int snooze_timeout_en ;
 int tb_ticks_per_usec ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u64 get_snooze_timeout(struct cpuidle_device *dev,
         struct cpuidle_driver *drv,
         int index)
{
 int i;

 if (unlikely(!snooze_timeout_en))
  return default_snooze_timeout;

 for (i = index + 1; i < drv->state_count; i++) {
  struct cpuidle_state *s = &drv->states[i];
  struct cpuidle_state_usage *su = &dev->states_usage[i];

  if (s->disabled || su->disable)
   continue;

  return s->target_residency * tb_ticks_per_usec;
 }

 return default_snooze_timeout;
}
