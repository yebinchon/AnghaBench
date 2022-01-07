
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pt {int vmx_on; } ;
struct TYPE_2__ {int config; } ;
struct perf_event {TYPE_1__ hw; } ;


 int MSR_IA32_RTIT_CTL ;
 int READ_ONCE (int ) ;
 int RTIT_CTL_TRACEEN ;
 int WRITE_ONCE (int ,int) ;
 int pt_ctx ;
 struct pt* this_cpu_ptr (int *) ;
 int wmb () ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void pt_config_stop(struct perf_event *event)
{
 struct pt *pt = this_cpu_ptr(&pt_ctx);
 u64 ctl = READ_ONCE(event->hw.config);


 if (!(ctl & RTIT_CTL_TRACEEN))
  return;

 ctl &= ~RTIT_CTL_TRACEEN;
 if (!READ_ONCE(pt->vmx_on))
  wrmsrl(MSR_IA32_RTIT_CTL, ctl);

 WRITE_ONCE(event->hw.config, ctl);
 wmb();
}
