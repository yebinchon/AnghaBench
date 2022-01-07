
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;


 int SIE_STIE ;
 int csr_clear (int ,int ) ;
 int riscv_clock_event ;
 int sie ;
 int stub1 (struct clock_event_device*) ;
 struct clock_event_device* this_cpu_ptr (int *) ;

void riscv_timer_interrupt(void)
{
 struct clock_event_device *evdev = this_cpu_ptr(&riscv_clock_event);

 csr_clear(sie, SIE_STIE);
 evdev->event_handler(evdev);
}
