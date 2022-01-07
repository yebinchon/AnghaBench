
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int prev_count; } ;
struct perf_event {TYPE_1__ hw; } ;


 int local64_set (int *,int ) ;
 int msr_read_counter (struct perf_event*) ;

__attribute__((used)) static void msr_event_start(struct perf_event *event, int flags)
{
 u64 now = msr_read_counter(event);

 local64_set(&event->hw.prev_count, now);
}
