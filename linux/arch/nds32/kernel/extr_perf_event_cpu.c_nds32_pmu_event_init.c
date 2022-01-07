
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int pmu; } ;
struct nds32_pmu {int (* map_event ) (struct perf_event*) ;int active_events; } ;
typedef int atomic_t ;


 int ENOENT ;
 int EOPNOTSUPP ;
 int __hw_perf_event_init (struct perf_event*) ;
 int atomic_inc (int *) ;
 int atomic_inc_not_zero (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ has_branch_stack (struct perf_event*) ;
 int nds32_pmu_reserve_hardware (struct nds32_pmu*) ;
 int stub1 (struct perf_event*) ;
 struct nds32_pmu* to_nds32_pmu (int ) ;

__attribute__((used)) static int nds32_pmu_event_init(struct perf_event *event)
{
 struct nds32_pmu *nds32_pmu = to_nds32_pmu(event->pmu);
 int err = 0;
 atomic_t *active_events = &nds32_pmu->active_events;


 if (has_branch_stack(event))
  return -EOPNOTSUPP;

 if (nds32_pmu->map_event(event) == -ENOENT)
  return -ENOENT;

 if (!atomic_inc_not_zero(active_events)) {
  if (atomic_read(active_events) == 0) {

   err = nds32_pmu_reserve_hardware(nds32_pmu);
  }

  if (!err)
   atomic_inc(active_events);
 }

 if (err)
  return err;

 err = __hw_perf_event_init(event);

 return err;
}
