
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct pt_regs {int flags; int r15; int r14; int r13; int r12; int r11; int r10; int r9; int r8; int sp; int bp; int di; int si; int dx; int cx; int bx; int ax; } ;
struct TYPE_7__ {int val; } ;
struct perf_sample_data {int * br_stack; int time; int txn; int weight; int addr; int callchain; TYPE_2__ data_src; int period; } ;
struct TYPE_9__ {int sample_type; int precise_ip; scalar_t__ use_clockid; } ;
struct TYPE_6__ {int flags; int last_period; } ;
struct perf_event {TYPE_4__ attr; TYPE_1__ hw; } ;
struct pebs_record_skl {int flags; int tsc; int ax; int tsx_tuning; int dla; int ip; int real_ip; int r15; int r14; int r13; int r12; int r11; int r10; int r9; int r8; int sp; int bp; int di; int si; int dx; int cx; int bx; int dse; int lat; } ;
struct cpu_hw_events {int lbr_stack; } ;
struct TYPE_8__ {int pebs_format; } ;
struct TYPE_10__ {TYPE_3__ intel_cap; } ;


 int PERF_EFLAGS_EXACT ;
 int PERF_SAMPLE_ADDR ;
 int PERF_SAMPLE_CALLCHAIN ;
 int PERF_SAMPLE_DATA_SRC ;
 int PERF_SAMPLE_PHYS_ADDR ;
 int PERF_SAMPLE_REGS_INTR ;
 int PERF_SAMPLE_TRANSACTION ;
 int PERF_SAMPLE_WEIGHT ;
 int PERF_X86_EVENT_PEBS_LDLAT ;
 int cpu_hw_events ;
 int get_data_src (struct perf_event*,int ) ;
 scalar_t__ has_branch_stack (struct perf_event*) ;
 int intel_get_tsx_transaction (int ,int ) ;
 int intel_get_tsx_weight (int ) ;
 scalar_t__ intel_pmu_pebs_fixup_ip (struct pt_regs*) ;
 int native_sched_clock_from_tsc (int ) ;
 int perf_callchain (struct perf_event*,struct pt_regs*) ;
 int perf_sample_data_init (struct perf_sample_data*,int ,int ) ;
 int set_linear_ip (struct pt_regs*,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 TYPE_5__ x86_pmu ;

__attribute__((used)) static void setup_pebs_fixed_sample_data(struct perf_event *event,
       struct pt_regs *iregs, void *__pebs,
       struct perf_sample_data *data,
       struct pt_regs *regs)
{




 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct pebs_record_skl *pebs = __pebs;
 u64 sample_type;
 int fll;

 if (pebs == ((void*)0))
  return;

 sample_type = event->attr.sample_type;
 fll = event->hw.flags & PERF_X86_EVENT_PEBS_LDLAT;

 perf_sample_data_init(data, 0, event->hw.last_period);

 data->period = event->hw.last_period;




 if (fll && (sample_type & PERF_SAMPLE_WEIGHT))
  data->weight = pebs->lat;




 if (sample_type & PERF_SAMPLE_DATA_SRC)
  data->data_src.val = get_data_src(event, pebs->dse);







 if (sample_type & PERF_SAMPLE_CALLCHAIN)
  data->callchain = perf_callchain(event, iregs);
 *regs = *iregs;






 regs->flags = pebs->flags & ~PERF_EFLAGS_EXACT;

 if (sample_type & PERF_SAMPLE_REGS_INTR) {
  regs->ax = pebs->ax;
  regs->bx = pebs->bx;
  regs->cx = pebs->cx;
  regs->dx = pebs->dx;
  regs->si = pebs->si;
  regs->di = pebs->di;

  regs->bp = pebs->bp;
  regs->sp = pebs->sp;


  regs->r8 = pebs->r8;
  regs->r9 = pebs->r9;
  regs->r10 = pebs->r10;
  regs->r11 = pebs->r11;
  regs->r12 = pebs->r12;
  regs->r13 = pebs->r13;
  regs->r14 = pebs->r14;
  regs->r15 = pebs->r15;

 }

 if (event->attr.precise_ip > 1) {





  if (x86_pmu.intel_cap.pebs_format >= 2) {
   set_linear_ip(regs, pebs->real_ip);
   regs->flags |= PERF_EFLAGS_EXACT;
  } else {

   set_linear_ip(regs, pebs->ip);






   if (intel_pmu_pebs_fixup_ip(regs))
    regs->flags |= PERF_EFLAGS_EXACT;
  }
 } else {




  set_linear_ip(regs, pebs->ip);
 }


 if ((sample_type & (PERF_SAMPLE_ADDR | PERF_SAMPLE_PHYS_ADDR)) &&
     x86_pmu.intel_cap.pebs_format >= 1)
  data->addr = pebs->dla;

 if (x86_pmu.intel_cap.pebs_format >= 2) {

  if ((sample_type & PERF_SAMPLE_WEIGHT) && !fll)
   data->weight = intel_get_tsx_weight(pebs->tsx_tuning);

  if (sample_type & PERF_SAMPLE_TRANSACTION)
   data->txn = intel_get_tsx_transaction(pebs->tsx_tuning,
             pebs->ax);
 }







 if (x86_pmu.intel_cap.pebs_format >= 3 &&
  event->attr.use_clockid == 0)
  data->time = native_sched_clock_from_tsc(pebs->tsc);

 if (has_branch_stack(event))
  data->br_stack = &cpuc->lbr_stack;
}
