
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hw_perf_event_extra {int idx; int config; } ;
struct hw_perf_event {int config; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int EXTRA_REG_NHMEX_M_ZDP_CTL_FVC ;
 int NHMEX_M_PMON_CTL_INC_SEL_SHIFT ;
 int NHMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK (int) ;
 int NHMEX_M_PMON_ZDP_CTL_FVC_MASK ;
 int WSMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK (int) ;
 int WSMEX_M_PMON_ZDP_CTL_FVC_MASK ;
 int __BITS_VALUE (int,int ,int) ;
 scalar_t__ uncore_nhmex ;

__attribute__((used)) static u64 nhmex_mbox_alter_er(struct perf_event *event, int new_idx, bool modify)
{
 struct hw_perf_event *hwc = &event->hw;
 struct hw_perf_event_extra *reg1 = &hwc->extra_reg;
 u64 idx, orig_idx = __BITS_VALUE(reg1->idx, 0, 8);
 u64 config = reg1->config;


 idx = orig_idx - EXTRA_REG_NHMEX_M_ZDP_CTL_FVC;
 if (uncore_nhmex)
  config &= NHMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK(idx);
 else
  config &= WSMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK(idx);
 if (new_idx > orig_idx) {
  idx = new_idx - orig_idx;
  config <<= 3 * idx;
 } else {
  idx = orig_idx - new_idx;
  config >>= 3 * idx;
 }


 if (uncore_nhmex)
  config |= NHMEX_M_PMON_ZDP_CTL_FVC_MASK & reg1->config;
 else
  config |= WSMEX_M_PMON_ZDP_CTL_FVC_MASK & reg1->config;
 config |= NHMEX_M_PMON_ZDP_CTL_FVC_MASK & reg1->config;
 if (modify) {

  if (new_idx > orig_idx)
   hwc->config += idx << NHMEX_M_PMON_CTL_INC_SEL_SHIFT;
  else
   hwc->config -= idx << NHMEX_M_PMON_CTL_INC_SEL_SHIFT;
  reg1->config = config;
  reg1->idx = ~0xff | new_idx;
 }
 return config;
}
