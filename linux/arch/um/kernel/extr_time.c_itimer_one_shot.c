
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int itimer_next_event (int ,struct clock_event_device*) ;

__attribute__((used)) static int itimer_one_shot(struct clock_event_device *evt)
{
 return itimer_next_event(0, evt);
}
