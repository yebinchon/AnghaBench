
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int CMOS_READ (int ) ;
 int IRQ_HANDLED ;
 int RTC_REG_C ;
 struct clock_event_device ds1287_clockevent ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t ds1287_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *cd = &ds1287_clockevent;


 CMOS_READ(RTC_REG_C);

 cd->event_handler(cd);

 return IRQ_HANDLED;
}
