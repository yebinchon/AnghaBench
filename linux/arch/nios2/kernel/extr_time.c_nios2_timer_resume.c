
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nios2_timer {int dummy; } ;
struct nios2_clockevent_dev {struct nios2_timer timer; } ;
struct clock_event_device {int dummy; } ;


 int nios2_timer_start (struct nios2_timer*) ;
 struct nios2_clockevent_dev* to_nios2_clkevent (struct clock_event_device*) ;

__attribute__((used)) static int nios2_timer_resume(struct clock_event_device *evt)
{
 struct nios2_clockevent_dev *nios2_ced = to_nios2_clkevent(evt);
 struct nios2_timer *timer = &nios2_ced->timer;

 nios2_timer_start(timer);
 return 0;
}
