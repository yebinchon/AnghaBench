
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_pmu_capability {unsigned int events_mask; int events_mask_len; int bit_width_fixed; int bit_width_gp; int num_counters_fixed; int num_counters_gp; int version; } ;
struct TYPE_2__ {int events_mask_len; scalar_t__ events_maskl; int cntval_bits; int num_counters_fixed; int num_counters; int version; } ;


 TYPE_1__ x86_pmu ;

void perf_get_x86_pmu_capability(struct x86_pmu_capability *cap)
{
 cap->version = x86_pmu.version;
 cap->num_counters_gp = x86_pmu.num_counters;
 cap->num_counters_fixed = x86_pmu.num_counters_fixed;
 cap->bit_width_gp = x86_pmu.cntval_bits;
 cap->bit_width_fixed = x86_pmu.cntval_bits;
 cap->events_mask = (unsigned int)x86_pmu.events_maskl;
 cap->events_mask_len = x86_pmu.events_mask_len;
}
