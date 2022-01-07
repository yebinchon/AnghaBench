
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pmu {int dummy; } ;
struct hw_perf_event {int dummy; } ;
struct TYPE_5__ {scalar_t__ dear; scalar_t__ tear; int interval; int cd; int ed; int cs; int es; } ;
struct cpu_hw_sf {int flags; TYPE_2__ lsctl; TYPE_1__* event; int sfb; } ;
struct TYPE_6__ {int lpp; } ;
struct TYPE_4__ {struct hw_perf_event hw; } ;


 int PMU_F_ENABLED ;
 int PMU_F_ERR_MASK ;
 TYPE_3__ S390_lowcore ;
 int SAMPL_DIAG_MODE (struct hw_perf_event*) ;
 int SAMPL_RATE (struct hw_perf_event*) ;
 int barrier () ;
 int cpu_hw_sf ;
 int debug_sprintf_event (int ,int,char*,int ,int ,int ,int ,int ,void*,void*) ;
 int extend_sampling_buffer (int *,struct hw_perf_event*) ;
 int lpp (int *) ;
 int lsctl (TYPE_2__*) ;
 int pr_err (char*,int,int) ;
 int sfb_account_overflows (struct cpu_hw_sf*,struct hw_perf_event*) ;
 scalar_t__ sfb_has_pending_allocs (int *,struct hw_perf_event*) ;
 int sfdbg ;
 struct cpu_hw_sf* this_cpu_ptr (int *) ;

__attribute__((used)) static void cpumsf_pmu_enable(struct pmu *pmu)
{
 struct cpu_hw_sf *cpuhw = this_cpu_ptr(&cpu_hw_sf);
 struct hw_perf_event *hwc;
 int err;

 if (cpuhw->flags & PMU_F_ENABLED)
  return;

 if (cpuhw->flags & PMU_F_ERR_MASK)
  return;
 if (cpuhw->event) {
  hwc = &cpuhw->event->hw;
  if (!(SAMPL_DIAG_MODE(hwc))) {




   sfb_account_overflows(cpuhw, hwc);
   if (sfb_has_pending_allocs(&cpuhw->sfb, hwc))
    extend_sampling_buffer(&cpuhw->sfb, hwc);
  }

  cpuhw->lsctl.interval = SAMPL_RATE(&cpuhw->event->hw);
 }


 cpuhw->flags |= PMU_F_ENABLED;
 barrier();

 err = lsctl(&cpuhw->lsctl);
 if (err) {
  cpuhw->flags &= ~PMU_F_ENABLED;
  pr_err("Loading sampling controls failed: op=%i err=%i\n",
   1, err);
  return;
 }


 lpp(&S390_lowcore.lpp);

 debug_sprintf_event(sfdbg, 6, "pmu_enable: es=%i cs=%i ed=%i cd=%i "
       "interval:%lx tear=%p dear=%p\n",
       cpuhw->lsctl.es, cpuhw->lsctl.cs, cpuhw->lsctl.ed,
       cpuhw->lsctl.cd, cpuhw->lsctl.interval,
       (void *) cpuhw->lsctl.tear,
       (void *) cpuhw->lsctl.dear);
}
