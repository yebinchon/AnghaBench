
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int timer_shutdown (struct clock_event_device*) ;

__attribute__((used)) static int sp804_shutdown(struct clock_event_device *evt)
{
 timer_shutdown(evt);
 return 0;
}
