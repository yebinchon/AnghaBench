
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hw_perf_event {scalar_t__ pwr_acc; scalar_t__ ptsc; } ;
struct perf_event {int count; struct hw_perf_event hw; } ;


 int MSR_F15H_CU_PWR_ACCUMULATOR ;
 int MSR_F15H_PTSC ;
 int cpu_pwr_sample_ratio ;
 int do_div (scalar_t__,scalar_t__) ;
 int local64_add (scalar_t__,int *) ;
 scalar_t__ max_cu_acc_power ;
 int rdmsrl (int ,scalar_t__) ;

__attribute__((used)) static void event_update(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 u64 prev_pwr_acc, new_pwr_acc, prev_ptsc, new_ptsc;
 u64 delta, tdelta;

 prev_pwr_acc = hwc->pwr_acc;
 prev_ptsc = hwc->ptsc;
 rdmsrl(MSR_F15H_CU_PWR_ACCUMULATOR, new_pwr_acc);
 rdmsrl(MSR_F15H_PTSC, new_ptsc);





 if (new_pwr_acc < prev_pwr_acc) {
  delta = max_cu_acc_power + new_pwr_acc;
  delta -= prev_pwr_acc;
 } else
  delta = new_pwr_acc - prev_pwr_acc;

 delta *= cpu_pwr_sample_ratio * 1000;
 tdelta = new_ptsc - prev_ptsc;

 do_div(delta, tdelta);
 local64_add(delta, &event->count);
}
