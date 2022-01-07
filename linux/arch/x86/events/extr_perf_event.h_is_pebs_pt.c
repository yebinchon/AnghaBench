
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct perf_event {TYPE_1__ hw; } ;


 int PERF_X86_EVENT_PEBS_VIA_PT ;

__attribute__((used)) static inline int is_pebs_pt(struct perf_event *event)
{
 return !!(event->hw.flags & PERF_X86_EVENT_PEBS_VIA_PT);
}
