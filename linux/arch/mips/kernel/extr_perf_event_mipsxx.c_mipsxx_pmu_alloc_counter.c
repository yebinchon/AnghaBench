
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {int event_base; } ;
struct cpu_hw_events {int used_mask; } ;
struct TYPE_2__ {int num_counters; } ;


 int EAGAIN ;
 TYPE_1__ mipspmu ;
 int test_and_set_bit (int,int ) ;
 scalar_t__ test_bit (int,unsigned long*) ;

__attribute__((used)) static int mipsxx_pmu_alloc_counter(struct cpu_hw_events *cpuc,
        struct hw_perf_event *hwc)
{
 int i;





 unsigned long cntr_mask = (hwc->event_base >> 8) & 0xffff;

 for (i = mipspmu.num_counters - 1; i >= 0; i--) {
  if (test_bit(i, &cntr_mask) &&
   !test_and_set_bit(i, cpuc->used_mask))
   return i;
 }

 return -EAGAIN;
}
