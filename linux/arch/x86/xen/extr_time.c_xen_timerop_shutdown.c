
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int HYPERVISOR_set_timer_op (int ) ;

__attribute__((used)) static int xen_timerop_shutdown(struct clock_event_device *evt)
{

 HYPERVISOR_set_timer_op(0);

 return 0;
}
