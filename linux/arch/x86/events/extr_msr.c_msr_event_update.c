
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ event_base; int prev_count; } ;
struct perf_event {int count; TYPE_1__ hw; } ;
typedef scalar_t__ s64 ;


 scalar_t__ MSR_IA32_THERM_STATUS ;
 scalar_t__ MSR_SMI_COUNT ;
 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ local64_read (int *) ;
 int local64_set (int *,scalar_t__) ;
 scalar_t__ msr_read_counter (struct perf_event*) ;
 scalar_t__ sign_extend64 (scalar_t__,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void msr_event_update(struct perf_event *event)
{
 u64 prev, now;
 s64 delta;


again:
 prev = local64_read(&event->hw.prev_count);
 now = msr_read_counter(event);

 if (local64_cmpxchg(&event->hw.prev_count, prev, now) != prev)
  goto again;

 delta = now - prev;
 if (unlikely(event->hw.event_base == MSR_SMI_COUNT)) {
  delta = sign_extend64(delta, 31);
  local64_add(delta, &event->count);
 } else if (unlikely(event->hw.event_base == MSR_IA32_THERM_STATUS)) {

  now = now & (1ULL << 31) ? (now >> 16) & 0x3f : -1;
  local64_set(&event->count, now);
 } else {
  local64_add(delta, &event->count);
 }
}
