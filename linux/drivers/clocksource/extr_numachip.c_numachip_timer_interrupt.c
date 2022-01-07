
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;


 int numachip2_ced ;
 int stub1 (struct clock_event_device*) ;
 struct clock_event_device* this_cpu_ptr (int *) ;

__attribute__((used)) static void numachip_timer_interrupt(void)
{
 struct clock_event_device *ced = this_cpu_ptr(&numachip2_ced);

 ced->event_handler(ced);
}
