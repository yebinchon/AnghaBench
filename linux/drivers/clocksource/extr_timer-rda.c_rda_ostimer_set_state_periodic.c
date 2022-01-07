
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;
struct clock_event_device {unsigned long long mult; unsigned long long shift; } ;


 unsigned long long HZ ;
 scalar_t__ NSEC_PER_SEC ;
 int rda_ostimer_start (int ,int,unsigned long) ;
 int rda_ostimer_stop (int ) ;
 int timer_of_base (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;

__attribute__((used)) static int rda_ostimer_set_state_periodic(struct clock_event_device *evt)
{
 struct timer_of *to = to_timer_of(evt);
 unsigned long cycles_per_jiffy;

 rda_ostimer_stop(timer_of_base(to));

 cycles_per_jiffy = ((unsigned long long)NSEC_PER_SEC / HZ *
        evt->mult) >> evt->shift;
 rda_ostimer_start(timer_of_base(to), 1, cycles_per_jiffy);

 return 0;
}
