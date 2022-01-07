
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx; } ;
struct perf_event {TYPE_1__ hw; struct perf_event* group_leader; } ;
struct intel_uncore_pmu {int type; } ;
struct intel_uncore_box {int n_events; struct intel_uncore_pmu* pmu; } ;


 int EINVAL ;
 int ENOMEM ;
 int NUMA_NO_NODE ;
 int kfree (struct intel_uncore_box*) ;
 struct intel_uncore_box* uncore_alloc_box (int ,int ) ;
 int uncore_assign_events (struct intel_uncore_box*,int *,int) ;
 int uncore_collect_events (struct intel_uncore_box*,struct perf_event*,int) ;
 scalar_t__ uncore_pmc_freerunning (int ) ;

__attribute__((used)) static int uncore_validate_group(struct intel_uncore_pmu *pmu,
    struct perf_event *event)
{
 struct perf_event *leader = event->group_leader;
 struct intel_uncore_box *fake_box;
 int ret = -EINVAL, n;


 if (uncore_pmc_freerunning(event->hw.idx))
  return 0;

 fake_box = uncore_alloc_box(pmu->type, NUMA_NO_NODE);
 if (!fake_box)
  return -ENOMEM;

 fake_box->pmu = pmu;






 n = uncore_collect_events(fake_box, leader, 1);
 if (n < 0)
  goto out;

 fake_box->n_events = n;
 n = uncore_collect_events(fake_box, event, 0);
 if (n < 0)
  goto out;

 fake_box->n_events = n;

 ret = uncore_assign_events(fake_box, ((void*)0), n);
out:
 kfree(fake_box);
 return ret;
}
