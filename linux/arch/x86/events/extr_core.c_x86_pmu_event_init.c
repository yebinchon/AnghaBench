
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pmu {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {int type; } ;
struct perf_event {TYPE_1__ hw; int (* destroy ) (struct perf_event*) ;struct pmu* pmu; struct perf_event* group_leader; TYPE_2__ attr; } ;
struct TYPE_6__ {int attr_rdpmc; } ;


 int ENOENT ;



 int PERF_X86_EVENT_LARGE_PEBS ;
 int PERF_X86_EVENT_RDPMC_ALLOWED ;
 scalar_t__ READ_ONCE (int ) ;
 int __x86_pmu_event_init (struct perf_event*) ;
 struct pmu pmu ;
 int stub1 (struct perf_event*) ;
 int validate_event (struct perf_event*) ;
 int validate_group (struct perf_event*) ;
 TYPE_3__ x86_pmu ;

__attribute__((used)) static int x86_pmu_event_init(struct perf_event *event)
{
 struct pmu *tmp;
 int err;

 switch (event->attr.type) {
 case 128:
 case 130:
 case 129:
  break;

 default:
  return -ENOENT;
 }

 err = __x86_pmu_event_init(event);
 if (!err) {





  tmp = event->pmu;
  event->pmu = &pmu;

  if (event->group_leader != event)
   err = validate_group(event);
  else
   err = validate_event(event);

  event->pmu = tmp;
 }
 if (err) {
  if (event->destroy)
   event->destroy(event);
 }

 if (READ_ONCE(x86_pmu.attr_rdpmc) &&
     !(event->hw.flags & PERF_X86_EVENT_LARGE_PEBS))
  event->hw.flags |= PERF_X86_EVENT_RDPMC_ALLOWED;

 return err;
}
