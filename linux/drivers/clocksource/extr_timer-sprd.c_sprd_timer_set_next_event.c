
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;


 int sprd_timer_disable (int ) ;
 int sprd_timer_enable (int ,int ) ;
 int sprd_timer_update_counter (int ,unsigned long) ;
 int timer_of_base (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;

__attribute__((used)) static int sprd_timer_set_next_event(unsigned long cycles,
         struct clock_event_device *ce)
{
 struct timer_of *to = to_timer_of(ce);

 sprd_timer_disable(timer_of_base(to));
 sprd_timer_update_counter(timer_of_base(to), cycles);
 sprd_timer_enable(timer_of_base(to), 0);

 return 0;
}
