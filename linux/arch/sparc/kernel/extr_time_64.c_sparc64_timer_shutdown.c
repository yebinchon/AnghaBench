
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {int (* disable_irq ) () ;} ;


 int stub1 () ;
 TYPE_1__ tick_operations ;

__attribute__((used)) static int sparc64_timer_shutdown(struct clock_event_device *evt)
{
 tick_operations.disable_irq();
 return 0;
}
