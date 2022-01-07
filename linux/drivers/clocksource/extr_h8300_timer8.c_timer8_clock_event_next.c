
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer8_priv {int dummy; } ;
struct clock_event_device {int dummy; } ;


 int BUG_ON (int) ;
 struct timer8_priv* ced_to_priv (struct clock_event_device*) ;
 int clockevent_state_oneshot (struct clock_event_device*) ;
 int timer8_set_next (struct timer8_priv*,unsigned long) ;

__attribute__((used)) static int timer8_clock_event_next(unsigned long delta,
       struct clock_event_device *ced)
{
 struct timer8_priv *p = ced_to_priv(ced);

 BUG_ON(!clockevent_state_oneshot(ced));
 timer8_set_next(p, delta - 1);

 return 0;
}
