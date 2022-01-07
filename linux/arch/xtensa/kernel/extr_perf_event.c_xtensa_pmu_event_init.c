
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; size_t config; } ;
struct TYPE_3__ {int config; } ;
struct perf_event {TYPE_2__ attr; TYPE_1__ hw; } ;


 size_t ARRAY_SIZE (int*) ;
 int EINVAL ;
 int ENOENT ;



 int XTENSA_PMU_PMCTRL_INTEN ;
 int XTENSA_PMU_PMCTRL_KRNLCNT ;
 int XTENSA_PMU_PMCTRL_MASK ;
 int XTENSA_PMU_PMCTRL_SELECT ;
 int XTENSA_PMU_PMCTRL_SELECT_SHIFT ;
 int XTENSA_PMU_PMCTRL_TRACELEVEL ;
 int* xtensa_hw_ctl ;
 int xtensa_pmu_cache_event (size_t) ;

__attribute__((used)) static int xtensa_pmu_event_init(struct perf_event *event)
{
 int ret;

 switch (event->attr.type) {
 case 130:
  if (event->attr.config >= ARRAY_SIZE(xtensa_hw_ctl) ||
      xtensa_hw_ctl[event->attr.config] == 0)
   return -EINVAL;
  event->hw.config = xtensa_hw_ctl[event->attr.config];
  return 0;

 case 129:
  ret = xtensa_pmu_cache_event(event->attr.config);
  if (ret < 0)
   return ret;
  event->hw.config = ret;
  return 0;

 case 128:

  if ((event->attr.config & XTENSA_PMU_PMCTRL_SELECT) ==
      (1 << XTENSA_PMU_PMCTRL_SELECT_SHIFT))
   return -EINVAL;
  event->hw.config = (event->attr.config &
        (XTENSA_PMU_PMCTRL_KRNLCNT |
         XTENSA_PMU_PMCTRL_TRACELEVEL |
         XTENSA_PMU_PMCTRL_SELECT |
         XTENSA_PMU_PMCTRL_MASK)) |
   XTENSA_PMU_PMCTRL_INTEN;
  return 0;

 default:
  return -ENOENT;
 }
}
