
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int prev_count; } ;
struct perf_event {int count; TYPE_1__ hw; } ;


 scalar_t__ imc_read_counter (struct perf_event*) ;
 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_read (int *) ;

__attribute__((used)) static void imc_event_update(struct perf_event *event)
{
 u64 counter_prev, counter_new, final_count;

 counter_prev = local64_read(&event->hw.prev_count);
 counter_new = imc_read_counter(event);
 final_count = counter_new - counter_prev;


 local64_add(final_count, &event->count);
}
