
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_box {int hrtimer_duration; int hrtimer; } ;


 int HRTIMER_MODE_REL_PINNED ;
 int hrtimer_start (int *,int ,int ) ;
 int ns_to_ktime (int ) ;

void uncore_pmu_start_hrtimer(struct intel_uncore_box *box)
{
 hrtimer_start(&box->hrtimer, ns_to_ktime(box->hrtimer_duration),
        HRTIMER_MODE_REL_PINNED);
}
