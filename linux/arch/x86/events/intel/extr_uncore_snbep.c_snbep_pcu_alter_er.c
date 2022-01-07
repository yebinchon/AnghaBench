
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hw_perf_event_extra {int config; int idx; } ;
struct hw_perf_event {int config; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {struct hw_perf_event hw; } ;



__attribute__((used)) static u64 snbep_pcu_alter_er(struct perf_event *event, int new_idx, bool modify)
{
 struct hw_perf_event *hwc = &event->hw;
 struct hw_perf_event_extra *reg1 = &hwc->extra_reg;
 u64 config = reg1->config;

 if (new_idx > reg1->idx)
  config <<= 8 * (new_idx - reg1->idx);
 else
  config >>= 8 * (reg1->idx - new_idx);

 if (modify) {
  hwc->config += new_idx - reg1->idx;
  reg1->config = config;
  reg1->idx = new_idx;
 }
 return config;
}
