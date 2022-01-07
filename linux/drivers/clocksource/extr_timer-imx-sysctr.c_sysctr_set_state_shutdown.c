
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int sysctr_timer_enable (int) ;

__attribute__((used)) static int sysctr_set_state_shutdown(struct clock_event_device *evt)
{
 sysctr_timer_enable(0);

 return 0;
}
