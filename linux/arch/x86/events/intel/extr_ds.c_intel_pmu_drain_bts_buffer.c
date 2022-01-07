
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int addr; int ip; } ;
struct perf_output_handle {int dummy; } ;
struct perf_event_header {int size; } ;
struct TYPE_5__ {int interrupts; int last_period; } ;
struct TYPE_4__ {scalar_t__ exclude_kernel; } ;
struct perf_event {int pending_kill; TYPE_2__ hw; TYPE_1__ attr; } ;
struct debug_store {scalar_t__ bts_buffer_base; scalar_t__ bts_index; } ;
struct cpu_hw_events {struct perf_event** events; struct debug_store* ds; } ;
typedef int regs ;
struct TYPE_6__ {int bts_active; } ;


 size_t INTEL_PMC_IDX_FIXED_BTS ;
 int POLL_IN ;
 int cpu_hw_events ;
 scalar_t__ kernel_ip (int ) ;
 int memset (struct pt_regs*,int ,int) ;
 scalar_t__ perf_output_begin (struct perf_output_handle*,struct perf_event*,int) ;
 int perf_output_end (struct perf_output_handle*) ;
 int perf_output_sample (struct perf_output_handle*,struct perf_event_header*,struct perf_sample_data*,struct perf_event*) ;
 int perf_prepare_sample (struct perf_event_header*,struct perf_sample_data*,struct perf_event*,struct pt_regs*) ;
 int perf_sample_data_init (struct perf_sample_data*,int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 TYPE_3__ x86_pmu ;

int intel_pmu_drain_bts_buffer(void)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct debug_store *ds = cpuc->ds;
 struct bts_record {
  u64 from;
  u64 to;
  u64 flags;
 };
 struct perf_event *event = cpuc->events[INTEL_PMC_IDX_FIXED_BTS];
 struct bts_record *at, *base, *top;
 struct perf_output_handle handle;
 struct perf_event_header header;
 struct perf_sample_data data;
 unsigned long skip = 0;
 struct pt_regs regs;

 if (!event)
  return 0;

 if (!x86_pmu.bts_active)
  return 0;

 base = (struct bts_record *)(unsigned long)ds->bts_buffer_base;
 top = (struct bts_record *)(unsigned long)ds->bts_index;

 if (top <= base)
  return 0;

 memset(&regs, 0, sizeof(regs));

 ds->bts_index = ds->bts_buffer_base;

 perf_sample_data_init(&data, 0, event->hw.last_period);
 for (at = base; at < top; at++) {





  if (event->attr.exclude_kernel &&
      (kernel_ip(at->from) || kernel_ip(at->to)))
   skip++;
 }






 rcu_read_lock();
 perf_prepare_sample(&header, &data, event, &regs);

 if (perf_output_begin(&handle, event, header.size *
         (top - base - skip)))
  goto unlock;

 for (at = base; at < top; at++) {

  if (event->attr.exclude_kernel &&
      (kernel_ip(at->from) || kernel_ip(at->to)))
   continue;

  data.ip = at->from;
  data.addr = at->to;

  perf_output_sample(&handle, &header, &data, event);
 }

 perf_output_end(&handle);


 event->hw.interrupts++;
 event->pending_kill = POLL_IN;
unlock:
 rcu_read_unlock();
 return 1;
}
