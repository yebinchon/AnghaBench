
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {scalar_t__ sample_period; scalar_t__ exclude_hv; scalar_t__ exclude_kernel; scalar_t__ exclude_user; } ;
struct perf_event {TYPE_1__ attr; } ;
struct TYPE_4__ {int (* get_alternatives ) (int ,unsigned int,int *) ;scalar_t__ (* limited_pmc_event ) (int ) ;} ;


 int MAX_EVENT_ALTERNATIVES ;
 unsigned int PPMU_LIMITED_PMC_OK ;
 unsigned int PPMU_LIMITED_PMC_REQD ;
 TYPE_2__* ppmu ;
 scalar_t__ stub1 (int ) ;
 int stub2 (int ,unsigned int,int *) ;

__attribute__((used)) static int can_go_on_limited_pmc(struct perf_event *event, u64 ev,
     unsigned int flags)
{
 int n;
 u64 alt[MAX_EVENT_ALTERNATIVES];

 if (event->attr.exclude_user
     || event->attr.exclude_kernel
     || event->attr.exclude_hv
     || event->attr.sample_period)
  return 0;

 if (ppmu->limited_pmc_event(ev))
  return 1;





 if (!ppmu->get_alternatives)
  return 0;

 flags |= PPMU_LIMITED_PMC_OK | PPMU_LIMITED_PMC_REQD;
 n = ppmu->get_alternatives(ev, flags, alt);

 return n > 0;
}
