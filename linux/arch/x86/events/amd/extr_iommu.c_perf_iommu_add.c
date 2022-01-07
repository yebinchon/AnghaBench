
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct perf_event {TYPE_1__ hw; } ;


 int PERF_EF_RELOAD ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int get_next_avail_iommu_bnk_cntr (struct perf_event*) ;
 int perf_iommu_start (struct perf_event*,int ) ;

__attribute__((used)) static int perf_iommu_add(struct perf_event *event, int flags)
{
 int retval;

 event->hw.state = PERF_HES_UPTODATE | PERF_HES_STOPPED;


 retval = get_next_avail_iommu_bnk_cntr(event);
 if (retval)
  return retval;

 if (flags & PERF_EF_START)
  perf_iommu_start(event, PERF_EF_RELOAD);

 return 0;
}
