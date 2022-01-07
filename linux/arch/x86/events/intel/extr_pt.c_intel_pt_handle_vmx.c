
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct perf_event* event; } ;
struct pt {TYPE_3__ handle; int vmx_on; } ;
struct TYPE_4__ {int config; } ;
struct perf_event {TYPE_1__ hw; } ;
struct TYPE_5__ {scalar_t__ vmx; } ;


 int MSR_IA32_RTIT_CTL ;
 int PERF_AUX_FLAG_PARTIAL ;
 int WRITE_ONCE (int ,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int perf_aux_output_flag (TYPE_3__*,int ) ;
 int pt_ctx ;
 TYPE_2__ pt_pmu ;
 struct pt* this_cpu_ptr (int *) ;
 int wrmsrl (int ,int ) ;

void intel_pt_handle_vmx(int on)
{
 struct pt *pt = this_cpu_ptr(&pt_ctx);
 struct perf_event *event;
 unsigned long flags;


 if (pt_pmu.vmx)
  return;







 local_irq_save(flags);
 WRITE_ONCE(pt->vmx_on, on);





 event = pt->handle.event;
 if (event)
  perf_aux_output_flag(&pt->handle,
                       PERF_AUX_FLAG_PARTIAL);


 if (!on && event)
  wrmsrl(MSR_IA32_RTIT_CTL, event->hw.config);

 local_irq_restore(flags);
}
