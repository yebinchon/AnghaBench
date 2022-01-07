
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct perf_event {int count; } ;
struct hw_perf_event {int period_left; int prev_count; } ;
struct TYPE_2__ {scalar_t__ (* read_counter ) (int) ;} ;


 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ local64_read (int *) ;
 int local64_sub (scalar_t__,int *) ;
 TYPE_1__ mipspmu ;
 scalar_t__ stub1 (int) ;

__attribute__((used)) static void mipspmu_event_update(struct perf_event *event,
     struct hw_perf_event *hwc,
     int idx)
{
 u64 prev_raw_count, new_raw_count;
 u64 delta;

again:
 prev_raw_count = local64_read(&hwc->prev_count);
 new_raw_count = mipspmu.read_counter(idx);

 if (local64_cmpxchg(&hwc->prev_count, prev_raw_count,
    new_raw_count) != prev_raw_count)
  goto again;

 delta = new_raw_count - prev_raw_count;

 local64_add(delta, &event->count);
 local64_sub(delta, &hwc->period_left);
}
