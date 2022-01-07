
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int keystone_timer_disable () ;

__attribute__((used)) static int keystone_shutdown(struct clock_event_device *evt)
{
 keystone_timer_disable();
 return 0;
}
