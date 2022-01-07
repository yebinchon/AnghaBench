
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int state; } ;
struct perf_event {int pmu; TYPE_3__ hw; } ;
struct TYPE_7__ {int h; unsigned long tear; unsigned long dear; int es; int ed; int interval; scalar_t__ s; } ;
struct TYPE_6__ {scalar_t__ sdbt; } ;
struct cpu_hw_sf {int flags; struct perf_event* event; TYPE_2__ lsctl; int handle; TYPE_1__ sfb; } ;
struct aux_buffer {int dummy; } ;


 int EAGAIN ;
 int EINVAL ;
 int PERF_EF_RELOAD ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int PMU_F_IN_USE ;
 scalar_t__ SAMPL_DIAG_MODE (TYPE_3__*) ;
 int SAMPL_RATE (TYPE_3__*) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int aux_output_begin (int *,struct aux_buffer*,struct cpu_hw_sf*) ;
 int cpu_hw_sf ;
 int cpumsf_pmu_start (struct perf_event*,int ) ;
 int hw_reset_registers (TYPE_3__*,scalar_t__) ;
 struct aux_buffer* perf_aux_output_begin (int *,struct perf_event*) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int perf_pmu_disable (int ) ;
 int perf_pmu_enable (int ) ;
 struct cpu_hw_sf* this_cpu_ptr (int *) ;

__attribute__((used)) static int cpumsf_pmu_add(struct perf_event *event, int flags)
{
 struct cpu_hw_sf *cpuhw = this_cpu_ptr(&cpu_hw_sf);
 struct aux_buffer *aux;
 int err;

 if (cpuhw->flags & PMU_F_IN_USE)
  return -EAGAIN;

 if (!SAMPL_DIAG_MODE(&event->hw) && !cpuhw->sfb.sdbt)
  return -EINVAL;

 err = 0;
 perf_pmu_disable(event->pmu);

 event->hw.state = PERF_HES_UPTODATE | PERF_HES_STOPPED;






 cpuhw->lsctl.s = 0;
 cpuhw->lsctl.h = 1;
 cpuhw->lsctl.interval = SAMPL_RATE(&event->hw);
 if (!SAMPL_DIAG_MODE(&event->hw)) {
  cpuhw->lsctl.tear = (unsigned long) cpuhw->sfb.sdbt;
  cpuhw->lsctl.dear = *(unsigned long *) cpuhw->sfb.sdbt;
  hw_reset_registers(&event->hw, cpuhw->sfb.sdbt);
 }



 if (WARN_ON_ONCE(cpuhw->lsctl.es == 1 || cpuhw->lsctl.ed == 1)) {
  err = -EAGAIN;
  goto out;
 }
 if (SAMPL_DIAG_MODE(&event->hw)) {
  aux = perf_aux_output_begin(&cpuhw->handle, event);
  if (!aux) {
   err = -EINVAL;
   goto out;
  }
  err = aux_output_begin(&cpuhw->handle, aux, cpuhw);
  if (err)
   goto out;
  cpuhw->lsctl.ed = 1;
 }
 cpuhw->lsctl.es = 1;


 cpuhw->event = event;
 cpuhw->flags |= PMU_F_IN_USE;

 if (flags & PERF_EF_START)
  cpumsf_pmu_start(event, PERF_EF_RELOAD);
out:
 perf_event_update_userpage(event);
 perf_pmu_enable(event->pmu);
 return err;
}
