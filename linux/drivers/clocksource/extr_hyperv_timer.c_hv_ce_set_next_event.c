
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct clock_event_device {int dummy; } ;
struct TYPE_2__ {unsigned long (* read ) (int *) ;} ;


 int hv_init_timer (int ,unsigned long) ;
 TYPE_1__* hyperv_cs ;
 unsigned long stub1 (int *) ;

__attribute__((used)) static int hv_ce_set_next_event(unsigned long delta,
    struct clock_event_device *evt)
{
 u64 current_tick;

 current_tick = hyperv_cs->read(((void*)0));
 current_tick += delta;
 hv_init_timer(0, current_tick);
 return 0;
}
