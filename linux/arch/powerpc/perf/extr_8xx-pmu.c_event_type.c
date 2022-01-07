
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int config; } ;
struct perf_event {TYPE_1__ attr; } ;


 int DTLB_LOAD_MISS ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int ITLB_LOAD_MISS ;
 int PERF_8xx_ID_CPU_CYCLES ;
 int PERF_8xx_ID_DTLB_LOAD_MISS ;
 int PERF_8xx_ID_HW_INSTRUCTIONS ;
 int PERF_8xx_ID_ITLB_LOAD_MISS ;
 int PERF_COUNT_HW_CPU_CYCLES ;
 int PERF_COUNT_HW_INSTRUCTIONS ;




__attribute__((used)) static int event_type(struct perf_event *event)
{
 switch (event->attr.type) {
 case 130:
  if (event->attr.config == PERF_COUNT_HW_CPU_CYCLES)
   return PERF_8xx_ID_CPU_CYCLES;
  if (event->attr.config == PERF_COUNT_HW_INSTRUCTIONS)
   return PERF_8xx_ID_HW_INSTRUCTIONS;
  break;
 case 129:
  if (event->attr.config == ITLB_LOAD_MISS)
   return PERF_8xx_ID_ITLB_LOAD_MISS;
  if (event->attr.config == DTLB_LOAD_MISS)
   return PERF_8xx_ID_DTLB_LOAD_MISS;
  break;
 case 128:
  break;
 default:
  return -ENOENT;
 }
 return -EOPNOTSUPP;
}
