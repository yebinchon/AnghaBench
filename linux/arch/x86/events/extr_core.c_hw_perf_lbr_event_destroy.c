
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int hw_perf_event_destroy (struct perf_event*) ;
 int x86_del_exclusive (int ) ;
 int x86_lbr_exclusive_lbr ;

void hw_perf_lbr_event_destroy(struct perf_event *event)
{
 hw_perf_event_destroy(event);


 x86_del_exclusive(x86_lbr_exclusive_lbr);
}
