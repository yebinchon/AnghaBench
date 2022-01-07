
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_tmu_channel {int dummy; } ;
struct clock_event_device {int dummy; } ;


 struct sh_tmu_channel* ced_to_sh_tmu (struct clock_event_device*) ;
 scalar_t__ clockevent_state_oneshot (struct clock_event_device*) ;
 scalar_t__ clockevent_state_periodic (struct clock_event_device*) ;
 int sh_tmu_disable (struct sh_tmu_channel*) ;

__attribute__((used)) static int sh_tmu_clock_event_shutdown(struct clock_event_device *ced)
{
 struct sh_tmu_channel *ch = ced_to_sh_tmu(ced);

 if (clockevent_state_oneshot(ced) || clockevent_state_periodic(ced))
  sh_tmu_disable(ch);
 return 0;
}
