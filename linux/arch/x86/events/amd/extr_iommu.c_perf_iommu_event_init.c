
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int config1; int config; } ;
struct hw_perf_event {int conf1; int conf; } ;
struct perf_event {int attach_state; scalar_t__ cpu; TYPE_1__ attr; TYPE_2__* pmu; struct hw_perf_event hw; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 int EINVAL ;
 int ENOENT ;
 int PERF_ATTACH_TASK ;
 scalar_t__ is_sampling_event (struct perf_event*) ;

__attribute__((used)) static int perf_iommu_event_init(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;


 if (event->attr.type != event->pmu->type)
  return -ENOENT;






 if (is_sampling_event(event) || event->attach_state & PERF_ATTACH_TASK)
  return -EINVAL;

 if (event->cpu < 0)
  return -EINVAL;


 hwc->conf = event->attr.config;
 hwc->conf1 = event->attr.config1;

 return 0;
}
