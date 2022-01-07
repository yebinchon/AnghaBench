
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int idx; int prev_count; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int l2x0_pmu_counter_write (int ,int ) ;
 int local64_set (int *,int ) ;

__attribute__((used)) static void l2x0_pmu_event_configure(struct perf_event *event)
{
 struct hw_perf_event *hw = &event->hw;
 local64_set(&hw->prev_count, 0);
 l2x0_pmu_counter_write(hw->idx, 0);
}
