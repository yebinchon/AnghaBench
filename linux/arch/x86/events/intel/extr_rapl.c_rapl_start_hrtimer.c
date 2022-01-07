
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rapl_pmu {int timer_interval; int hrtimer; } ;


 int HRTIMER_MODE_REL_PINNED ;
 int hrtimer_start (int *,int ,int ) ;

__attribute__((used)) static void rapl_start_hrtimer(struct rapl_pmu *pmu)
{
       hrtimer_start(&pmu->hrtimer, pmu->timer_interval,
       HRTIMER_MODE_REL_PINNED);
}
