
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int TIMER64_MODE_DISABLED ;
 int timer64_disable () ;
 int timer64_mode ;

__attribute__((used)) static int shutdown(struct clock_event_device *evt)
{
 timer64_mode = TIMER64_MODE_DISABLED;
 timer64_disable();
 return 0;
}
