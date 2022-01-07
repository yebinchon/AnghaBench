
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mtu2_channel {int dummy; } ;
struct clock_event_device {int dummy; } ;


 struct sh_mtu2_channel* ced_to_sh_mtu2 (struct clock_event_device*) ;
 scalar_t__ clockevent_state_periodic (struct clock_event_device*) ;
 int sh_mtu2_disable (struct sh_mtu2_channel*) ;

__attribute__((used)) static int sh_mtu2_clock_event_shutdown(struct clock_event_device *ced)
{
 struct sh_mtu2_channel *ch = ced_to_sh_mtu2(ced);

 if (clockevent_state_periodic(ced))
  sh_mtu2_disable(ch);

 return 0;
}
