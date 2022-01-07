
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct perf_event {int (* destroy ) (struct perf_event*) ;TYPE_1__ attr; } ;


 int ENOENT ;
 int EOPNOTSUPP ;



 int __hw_perf_event_init (struct perf_event*) ;
 scalar_t__ has_branch_stack (struct perf_event*) ;
 int stub1 (struct perf_event*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sh_pmu_event_init(struct perf_event *event)
{
 int err;


 if (has_branch_stack(event))
  return -EOPNOTSUPP;

 switch (event->attr.type) {
 case 128:
 case 129:
 case 130:
  err = __hw_perf_event_init(event);
  break;

 default:
  return -ENOENT;
 }

 if (unlikely(err)) {
  if (event->destroy)
   event->destroy(event);
 }

 return err;
}
