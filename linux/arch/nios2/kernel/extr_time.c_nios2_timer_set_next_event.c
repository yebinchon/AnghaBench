
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nios2_clockevent_dev {int timer; } ;
struct clock_event_device {int dummy; } ;


 int nios2_timer_config (int *,unsigned long,int) ;
 struct nios2_clockevent_dev* to_nios2_clkevent (struct clock_event_device*) ;

__attribute__((used)) static int nios2_timer_set_next_event(unsigned long delta,
 struct clock_event_device *evt)
{
 struct nios2_clockevent_dev *nios2_ced = to_nios2_clkevent(evt);

 nios2_timer_config(&nios2_ced->timer, delta, 0);

 return 0;
}
