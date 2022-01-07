
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int pt_addr_filters_fini (struct perf_event*) ;
 int x86_del_exclusive (int ) ;
 int x86_lbr_exclusive_pt ;

__attribute__((used)) static void pt_event_destroy(struct perf_event *event)
{
 pt_addr_filters_fini(event);
 x86_del_exclusive(x86_lbr_exclusive_pt);
}
