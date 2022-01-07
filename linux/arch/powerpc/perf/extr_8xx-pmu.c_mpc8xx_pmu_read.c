
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prev_count; } ;
struct perf_event {int count; TYPE_1__ hw; } ;
typedef scalar_t__ s64 ;
typedef scalar_t__ s32 ;






 scalar_t__ dtlb_miss_counter ;
 int event_type (struct perf_event*) ;
 scalar_t__ get_insn_ctr () ;
 scalar_t__ get_tb () ;
 scalar_t__ itlb_miss_counter ;
 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ local64_read (int *) ;

__attribute__((used)) static void mpc8xx_pmu_read(struct perf_event *event)
{
 int type = event_type(event);
 s64 prev, val = 0, delta = 0;

 if (type < 0)
  return;

 do {
  prev = local64_read(&event->hw.prev_count);
  switch (type) {
  case 131:
   val = get_tb();
   delta = 16 * (val - prev);
   break;
  case 129:
   val = get_insn_ctr();
   delta = prev - val;
   if (delta < 0)
    delta += 0x1000000000000LL;
   break;
  case 128:
   val = itlb_miss_counter;
   delta = (s64)((s32)val - (s32)prev);
   break;
  case 130:
   val = dtlb_miss_counter;
   delta = (s64)((s32)val - (s32)prev);
   break;
  }
 } while (local64_cmpxchg(&event->hw.prev_count, prev, val) != prev);

 local64_add(delta, &event->count);
}
