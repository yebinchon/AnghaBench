
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;


 int atcpit100_clkevt_time_setup (int ,int ) ;
 int atcpit100_clkevt_time_start (int ) ;
 int timer_of_base (struct timer_of*) ;
 int timer_of_period (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;

__attribute__((used)) static int atcpit100_clkevt_set_periodic(struct clock_event_device *evt)
{
 struct timer_of *to = to_timer_of(evt);

 atcpit100_clkevt_time_setup(timer_of_base(to), timer_of_period(to));
 atcpit100_clkevt_time_start(timer_of_base(to));

 return 0;
}
