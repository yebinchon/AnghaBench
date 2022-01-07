
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int weight; int data_src; int * br_stack; int addr; } ;
struct TYPE_5__ {int sample_type; } ;
struct TYPE_4__ {scalar_t__ sample_period; int state; scalar_t__ last_period; int period_left; int prev_count; int idx; } ;
struct perf_event {TYPE_2__ attr; TYPE_1__ hw; int count; } ;
struct cpu_hw_events {int bhrb_stack; } ;
typedef scalar_t__ s64 ;
struct TYPE_6__ {int (* get_mem_weight ) (int *) ;int flags; int (* get_mem_data_src ) (int *,int ,struct pt_regs*) ;} ;


 int PERF_HES_STOPPED ;
 int PERF_SAMPLE_ADDR ;
 int PERF_SAMPLE_BRANCH_STACK ;
 int PERF_SAMPLE_DATA_SRC ;
 int PERF_SAMPLE_PHYS_ADDR ;
 int PERF_SAMPLE_WEIGHT ;
 scalar_t__ check_and_compute_delta (scalar_t__,unsigned long) ;
 int cpu_hw_events ;
 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_read (int *) ;
 int local64_set (int *,scalar_t__) ;
 scalar_t__ perf_event_overflow (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int perf_get_data_addr (struct pt_regs*,int *) ;
 int perf_sample_data_init (struct perf_sample_data*,unsigned long long,scalar_t__) ;
 int power_pmu_bhrb_read (struct cpu_hw_events*) ;
 int power_pmu_stop (struct perf_event*,int ) ;
 TYPE_3__* ppmu ;
 int siar_valid (struct pt_regs*) ;
 int stub1 (int *,int ,struct pt_regs*) ;
 int stub2 (int *) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int write_pmc (int ,unsigned long) ;

__attribute__((used)) static void record_and_restart(struct perf_event *event, unsigned long val,
          struct pt_regs *regs)
{
 u64 period = event->hw.sample_period;
 s64 prev, delta, left;
 int record = 0;

 if (event->hw.state & PERF_HES_STOPPED) {
  write_pmc(event->hw.idx, 0);
  return;
 }


 prev = local64_read(&event->hw.prev_count);
 delta = check_and_compute_delta(prev, val);
 local64_add(delta, &event->count);





 val = 0;
 left = local64_read(&event->hw.period_left) - delta;
 if (delta == 0)
  left++;
 if (period) {
  if (left <= 0) {
   left += period;
   if (left <= 0)
    left = period;
   record = siar_valid(regs);
   event->hw.last_period = event->hw.sample_period;
  }
  if (left < 0x80000000LL)
   val = 0x80000000LL - left;
 }

 write_pmc(event->hw.idx, val);
 local64_set(&event->hw.prev_count, val);
 local64_set(&event->hw.period_left, left);
 perf_event_update_userpage(event);




 if (record) {
  struct perf_sample_data data;

  perf_sample_data_init(&data, ~0ULL, event->hw.last_period);

  if (event->attr.sample_type &
      (PERF_SAMPLE_ADDR | PERF_SAMPLE_PHYS_ADDR))
   perf_get_data_addr(regs, &data.addr);

  if (event->attr.sample_type & PERF_SAMPLE_BRANCH_STACK) {
   struct cpu_hw_events *cpuhw;
   cpuhw = this_cpu_ptr(&cpu_hw_events);
   power_pmu_bhrb_read(cpuhw);
   data.br_stack = &cpuhw->bhrb_stack;
  }

  if (event->attr.sample_type & PERF_SAMPLE_DATA_SRC &&
      ppmu->get_mem_data_src)
   ppmu->get_mem_data_src(&data.data_src, ppmu->flags, regs);

  if (event->attr.sample_type & PERF_SAMPLE_WEIGHT &&
      ppmu->get_mem_weight)
   ppmu->get_mem_weight(&data.weight);

  if (perf_event_overflow(event, &data, regs))
   power_pmu_stop(event, 0);
 }
}
