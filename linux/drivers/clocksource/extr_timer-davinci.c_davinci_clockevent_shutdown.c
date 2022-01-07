
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_clockevent {int base; } ;
struct clock_event_device {int dummy; } ;


 int davinci_tim12_shutdown (int ) ;
 struct davinci_clockevent* to_davinci_clockevent (struct clock_event_device*) ;

__attribute__((used)) static int davinci_clockevent_shutdown(struct clock_event_device *dev)
{
 struct davinci_clockevent *clockevent;

 clockevent = to_davinci_clockevent(dev);

 davinci_tim12_shutdown(clockevent->base);

 return 0;
}
