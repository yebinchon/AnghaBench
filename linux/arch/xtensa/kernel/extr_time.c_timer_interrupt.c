
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct clock_event_device evt; } ;


 int IRQ_HANDLED ;
 int ccount_timer ;
 int get_linux_timer () ;
 int platform_heartbeat () ;
 int set_linux_timer (int ) ;
 int stub1 (struct clock_event_device*) ;
 TYPE_1__* this_cpu_ptr (int *) ;

__attribute__((used)) static irqreturn_t timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = &this_cpu_ptr(&ccount_timer)->evt;

 set_linux_timer(get_linux_timer());
 evt->event_handler(evt);


 platform_heartbeat();

 return IRQ_HANDLED;
}
