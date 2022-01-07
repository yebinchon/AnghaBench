
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct perf_event {int count; } ;
struct hw_perf_event {int prev_count; } ;
typedef int s64 ;
struct TYPE_2__ {int (* read ) (int) ;} ;


 int local64_add (int,int *) ;
 int local64_cmpxchg (int *,int,int) ;
 int local64_read (int *) ;
 TYPE_1__* sh_pmu ;
 int stub1 (int) ;

__attribute__((used)) static void sh_perf_event_update(struct perf_event *event,
       struct hw_perf_event *hwc, int idx)
{
 u64 prev_raw_count, new_raw_count;
 s64 delta;
 int shift = 0;
again:
 prev_raw_count = local64_read(&hwc->prev_count);
 new_raw_count = sh_pmu->read(idx);

 if (local64_cmpxchg(&hwc->prev_count, prev_raw_count,
        new_raw_count) != prev_raw_count)
  goto again;
 delta = (new_raw_count << shift) - (prev_raw_count << shift);
 delta >>= shift;

 local64_add(delta, &event->count);
}
