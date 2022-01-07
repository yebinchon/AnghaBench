
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;


 int hv_clock_event ;
 int stub1 (struct clock_event_device*) ;
 struct clock_event_device* this_cpu_ptr (int ) ;

void hv_stimer0_isr(void)
{
 struct clock_event_device *ce;

 ce = this_cpu_ptr(hv_clock_event);
 ce->event_handler(ce);
}
