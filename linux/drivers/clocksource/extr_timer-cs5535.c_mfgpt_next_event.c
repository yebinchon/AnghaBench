
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int cs5535_event_clock ;
 int start_timer (int ,unsigned long) ;

__attribute__((used)) static int mfgpt_next_event(unsigned long delta, struct clock_event_device *evt)
{
 start_timer(cs5535_event_clock, delta);
 return 0;
}
