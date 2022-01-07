
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int TIMER1_EN ;
 int TIMER1_RELOAD_EN ;
 scalar_t__ TIMER_CTRL ;
 int atomic_io_modify (scalar_t__,int,int ) ;
 scalar_t__ timer_base ;

__attribute__((used)) static int orion_clkevt_shutdown(struct clock_event_device *dev)
{

 atomic_io_modify(timer_base + TIMER_CTRL,
    TIMER1_RELOAD_EN | TIMER1_EN, 0);
 return 0;
}
