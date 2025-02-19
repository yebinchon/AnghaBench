
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct hw_perf_event_extra {unsigned long long config; int idx; } ;
struct TYPE_6__ {struct hw_perf_event_extra branch_reg; } ;
struct TYPE_5__ {unsigned long long branch_sample_type; } ;
struct perf_event {TYPE_2__ hw; TYPE_1__ attr; } ;
struct TYPE_7__ {scalar_t__ lbr_format; } ;
struct TYPE_8__ {unsigned long long* lbr_sel_map; unsigned long long lbr_sel_mask; TYPE_3__ intel_cap; } ;


 int EOPNOTSUPP ;
 int EXTRA_REG_LBR ;
 unsigned long long LBR_CALL_STACK ;
 scalar_t__ LBR_FORMAT_INFO ;
 unsigned long long LBR_IGN ;
 unsigned long long LBR_NOT_SUPP ;
 unsigned long long LBR_NO_INFO ;
 int PERF_SAMPLE_BRANCH_MAX_SHIFT ;
 unsigned long long PERF_SAMPLE_BRANCH_NO_CYCLES ;
 unsigned long long PERF_SAMPLE_BRANCH_NO_FLAGS ;
 TYPE_4__ x86_pmu ;

__attribute__((used)) static int intel_pmu_setup_hw_lbr_filter(struct perf_event *event)
{
 struct hw_perf_event_extra *reg;
 u64 br_type = event->attr.branch_sample_type;
 u64 mask = 0, v;
 int i;

 for (i = 0; i < PERF_SAMPLE_BRANCH_MAX_SHIFT; i++) {
  if (!(br_type & (1ULL << i)))
   continue;

  v = x86_pmu.lbr_sel_map[i];
  if (v == LBR_NOT_SUPP)
   return -EOPNOTSUPP;

  if (v != LBR_IGN)
   mask |= v;
 }

 reg = &event->hw.branch_reg;
 reg->idx = EXTRA_REG_LBR;
 reg->config = mask ^ (x86_pmu.lbr_sel_mask & ~LBR_CALL_STACK);

 if ((br_type & PERF_SAMPLE_BRANCH_NO_CYCLES) &&
     (br_type & PERF_SAMPLE_BRANCH_NO_FLAGS) &&
     (x86_pmu.intel_cap.lbr_format == LBR_FORMAT_INFO))
  reg->config |= LBR_NO_INFO;

 return 0;
}
