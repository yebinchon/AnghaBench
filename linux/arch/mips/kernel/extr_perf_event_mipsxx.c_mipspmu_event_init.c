
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct perf_event {scalar_t__ cpu; TYPE_1__ attr; } ;


 int ENODEV ;
 int ENOENT ;
 int EOPNOTSUPP ;



 int __hw_perf_event_init (struct perf_event*) ;
 int active_events ;
 int atomic_inc (int *) ;
 int atomic_inc_not_zero (int *) ;
 scalar_t__ atomic_read (int *) ;
 int cpu_online (scalar_t__) ;
 scalar_t__ has_branch_stack (struct perf_event*) ;
 int mipspmu_get_irq () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmu_reserve_mutex ;

__attribute__((used)) static int mipspmu_event_init(struct perf_event *event)
{
 int err = 0;


 if (has_branch_stack(event))
  return -EOPNOTSUPP;

 switch (event->attr.type) {
 case 128:
 case 130:
 case 129:
  break;

 default:
  return -ENOENT;
 }

 if (event->cpu >= 0 && !cpu_online(event->cpu))
  return -ENODEV;

 if (!atomic_inc_not_zero(&active_events)) {
  mutex_lock(&pmu_reserve_mutex);
  if (atomic_read(&active_events) == 0)
   err = mipspmu_get_irq();

  if (!err)
   atomic_inc(&active_events);
  mutex_unlock(&pmu_reserve_mutex);
 }

 if (err)
  return err;

 return __hw_perf_event_init(event);
}
