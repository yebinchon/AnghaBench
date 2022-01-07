
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int TIMER64_MODE_ONE_SHOT ;
 int timer64_enable () ;
 int timer64_mode ;

__attribute__((used)) static int set_oneshot(struct clock_event_device *evt)
{
 timer64_enable();
 timer64_mode = TIMER64_MODE_ONE_SHOT;
 return 0;
}
