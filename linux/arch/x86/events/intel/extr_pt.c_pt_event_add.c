
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ event; } ;
struct pt {TYPE_1__ handle; } ;
struct hw_perf_event {scalar_t__ state; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int EBUSY ;
 int EINVAL ;
 int PERF_EF_START ;
 scalar_t__ PERF_HES_STOPPED ;
 int pt_ctx ;
 int pt_event_start (struct perf_event*,int ) ;
 struct pt* this_cpu_ptr (int *) ;

__attribute__((used)) static int pt_event_add(struct perf_event *event, int mode)
{
 struct pt *pt = this_cpu_ptr(&pt_ctx);
 struct hw_perf_event *hwc = &event->hw;
 int ret = -EBUSY;

 if (pt->handle.event)
  goto fail;

 if (mode & PERF_EF_START) {
  pt_event_start(event, 0);
  ret = -EINVAL;
  if (hwc->state == PERF_HES_STOPPED)
   goto fail;
 } else {
  hwc->state = PERF_HES_STOPPED;
 }

 ret = 0;
fail:

 return ret;
}
