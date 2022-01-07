
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
struct TYPE_9__ {int precise_ip; int branch_sample_type; scalar_t__ type; int config; scalar_t__ sample_period; int sample_regs_user; int sample_regs_intr; int exclude_kernel; int exclude_user; } ;
struct TYPE_7__ {int config; } ;
struct perf_event {TYPE_4__ attr; TYPE_3__* pmu; TYPE_2__ hw; int attach_state; } ;
struct TYPE_6__ {int pebs_format; } ;
struct TYPE_10__ {scalar_t__ (* limit_period ) (struct perf_event*,scalar_t__) ;TYPE_1__ intel_cap; } ;
struct TYPE_8__ {int capabilities; } ;


 int ARCH_PERFMON_EVENTSEL_INT ;
 int ARCH_PERFMON_EVENTSEL_OS ;
 int ARCH_PERFMON_EVENTSEL_USR ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int PERF_ATTACH_TASK_DATA ;
 int PERF_PMU_CAP_EXTENDED_REGS ;
 int PERF_REG_EXTENDED_MASK ;
 int PERF_SAMPLE_BRANCH_ANY ;
 int PERF_SAMPLE_BRANCH_CALL_STACK ;
 int PERF_SAMPLE_BRANCH_KERNEL ;
 int PERF_SAMPLE_BRANCH_USER ;
 scalar_t__ PERF_TYPE_RAW ;
 int X86_RAW_EVENT_MASK ;
 scalar_t__ has_branch_stack (struct perf_event*) ;
 int is_sampling_event (struct perf_event*) ;
 int precise_br_compat (struct perf_event*) ;
 scalar_t__ stub1 (struct perf_event*,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 TYPE_5__ x86_pmu ;
 int x86_pmu_max_precise () ;
 int x86_setup_perfctr (struct perf_event*) ;

int x86_pmu_hw_config(struct perf_event *event)
{
 if (event->attr.precise_ip) {
  int precise = x86_pmu_max_precise();

  if (event->attr.precise_ip > precise)
   return -EOPNOTSUPP;


  if (!is_sampling_event(event))
   return -EINVAL;
 }




 if (event->attr.precise_ip > 1 && x86_pmu.intel_cap.pebs_format < 2) {
  u64 *br_type = &event->attr.branch_sample_type;

  if (has_branch_stack(event)) {
   if (!precise_br_compat(event))
    return -EOPNOTSUPP;



  } else {







   *br_type = PERF_SAMPLE_BRANCH_ANY;

   if (!event->attr.exclude_user)
    *br_type |= PERF_SAMPLE_BRANCH_USER;

   if (!event->attr.exclude_kernel)
    *br_type |= PERF_SAMPLE_BRANCH_KERNEL;
  }
 }

 if (event->attr.branch_sample_type & PERF_SAMPLE_BRANCH_CALL_STACK)
  event->attach_state |= PERF_ATTACH_TASK_DATA;





 event->hw.config = ARCH_PERFMON_EVENTSEL_INT;




 if (!event->attr.exclude_user)
  event->hw.config |= ARCH_PERFMON_EVENTSEL_USR;
 if (!event->attr.exclude_kernel)
  event->hw.config |= ARCH_PERFMON_EVENTSEL_OS;

 if (event->attr.type == PERF_TYPE_RAW)
  event->hw.config |= event->attr.config & X86_RAW_EVENT_MASK;

 if (event->attr.sample_period && x86_pmu.limit_period) {
  if (x86_pmu.limit_period(event, event->attr.sample_period) >
    event->attr.sample_period)
   return -EINVAL;
 }


 if (unlikely(event->attr.sample_regs_user & PERF_REG_EXTENDED_MASK))
  return -EINVAL;




 if (unlikely(event->attr.sample_regs_intr & PERF_REG_EXTENDED_MASK)) {
  if (!(event->pmu->capabilities & PERF_PMU_CAP_EXTENDED_REGS))
   return -EINVAL;

  if (!event->attr.precise_ip)
   return -EINVAL;
 }

 return x86_setup_perfctr(event);
}
