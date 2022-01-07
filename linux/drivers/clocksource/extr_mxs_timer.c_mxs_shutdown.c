
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int mxs_irq_clear (char*) ;

__attribute__((used)) static int mxs_shutdown(struct clock_event_device *evt)
{
 mxs_irq_clear("shutdown");

 return 0;
}
