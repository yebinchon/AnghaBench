
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct intel_uncore_box {TYPE_1__ hrtimer; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_REL ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int uncore_pmu_hrtimer ;

__attribute__((used)) static void uncore_pmu_init_hrtimer(struct intel_uncore_box *box)
{
 hrtimer_init(&box->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 box->hrtimer.function = uncore_pmu_hrtimer;
}
