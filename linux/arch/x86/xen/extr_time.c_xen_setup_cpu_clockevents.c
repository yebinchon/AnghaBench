
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int evt; } ;


 int clockevents_register_device (int ) ;
 int this_cpu_ptr (int *) ;
 TYPE_1__ xen_clock_events ;

void xen_setup_cpu_clockevents(void)
{
 clockevents_register_device(this_cpu_ptr(&xen_clock_events.evt));
}
