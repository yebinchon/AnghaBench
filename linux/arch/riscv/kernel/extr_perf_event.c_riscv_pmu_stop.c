
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hw_perf_event {int state; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct TYPE_4__ {TYPE_1__* pmu; } ;
struct TYPE_3__ {int (* read ) (struct perf_event*) ;} ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int WARN_ON_ONCE (int) ;
 TYPE_2__* riscv_pmu ;
 int stub1 (struct perf_event*) ;

__attribute__((used)) static void riscv_pmu_stop(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;

 WARN_ON_ONCE(hwc->state & PERF_HES_STOPPED);
 hwc->state |= PERF_HES_STOPPED;

 if ((flags & PERF_EF_UPDATE) && !(hwc->state & PERF_HES_UPTODATE)) {
  riscv_pmu->pmu->read(event);
  hwc->state |= PERF_HES_UPTODATE;
 }
}
