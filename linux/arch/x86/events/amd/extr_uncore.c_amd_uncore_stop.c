
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; int config; int config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int amd_uncore_read (struct perf_event*) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void amd_uncore_stop(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;

 wrmsrl(hwc->config_base, hwc->config);
 hwc->state |= PERF_HES_STOPPED;

 if ((flags & PERF_EF_UPDATE) && !(hwc->state & PERF_HES_UPTODATE)) {
  amd_uncore_read(event);
  hwc->state |= PERF_HES_UPTODATE;
 }
}
