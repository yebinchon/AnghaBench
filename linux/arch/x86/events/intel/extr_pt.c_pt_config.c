
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct pt {int handle; int vmx_on; } ;
struct TYPE_4__ {int config; } ;
struct TYPE_3__ {int config; int exclude_user; int exclude_kernel; } ;
struct perf_event {TYPE_2__ hw; TYPE_1__ attr; } ;


 int BIT (int ) ;
 int MSR_IA32_RTIT_CTL ;
 int MSR_IA32_RTIT_STATUS ;
 int PERF_AUX_FLAG_PARTIAL ;
 int PT_CONFIG_MASK ;
 scalar_t__ READ_ONCE (int ) ;
 int RTIT_CTL_BRANCH_EN ;
 int RTIT_CTL_OS ;
 int RTIT_CTL_TOPA ;
 int RTIT_CTL_TRACEEN ;
 int RTIT_CTL_USR ;
 int perf_aux_output_flag (int *,int ) ;
 int perf_event_itrace_started (struct perf_event*) ;
 int pt_config_filters (struct perf_event*) ;
 int pt_ctx ;
 struct pt* this_cpu_ptr (int *) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void pt_config(struct perf_event *event)
{
 struct pt *pt = this_cpu_ptr(&pt_ctx);
 u64 reg;


 if (!event->hw.config) {
  perf_event_itrace_started(event);
  wrmsrl(MSR_IA32_RTIT_STATUS, 0);
 }

 reg = pt_config_filters(event);
 reg |= RTIT_CTL_TOPA | RTIT_CTL_TRACEEN;
 if (event->attr.config & BIT(0)) {
  reg |= event->attr.config & RTIT_CTL_BRANCH_EN;
 } else {
  reg |= RTIT_CTL_BRANCH_EN;
 }

 if (!event->attr.exclude_kernel)
  reg |= RTIT_CTL_OS;
 if (!event->attr.exclude_user)
  reg |= RTIT_CTL_USR;

 reg |= (event->attr.config & PT_CONFIG_MASK);

 event->hw.config = reg;
 if (READ_ONCE(pt->vmx_on))
  perf_aux_output_flag(&pt->handle, PERF_AUX_FLAG_PARTIAL);
 else
  wrmsrl(MSR_IA32_RTIT_CTL, reg);
}
