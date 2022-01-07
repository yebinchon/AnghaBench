
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ event; } ;
struct pt {TYPE_1__ handle; } ;


 int PERF_EF_UPDATE ;
 int pt_ctx ;
 int pt_event_stop (scalar_t__,int ) ;
 struct pt* this_cpu_ptr (int *) ;

void cpu_emergency_stop_pt(void)
{
 struct pt *pt = this_cpu_ptr(&pt_ctx);

 if (pt->handle.event)
  pt_event_stop(pt->handle.event, PERF_EF_UPDATE);
}
