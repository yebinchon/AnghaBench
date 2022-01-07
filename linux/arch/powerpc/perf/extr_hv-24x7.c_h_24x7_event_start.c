
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prev_count; } ;
struct perf_event {TYPE_1__ hw; } ;


 int PERF_EF_RELOAD ;
 int h_24x7_get_value (struct perf_event*) ;
 int local64_set (int *,int ) ;

__attribute__((used)) static void h_24x7_event_start(struct perf_event *event, int flags)
{
 if (flags & PERF_EF_RELOAD)
  local64_set(&event->hw.prev_count, h_24x7_get_value(event));
}
