
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nds32_pmu {int num_events; } ;



__attribute__((used)) static inline int nds32_pfm_counter_valid(struct nds32_pmu *cpu_pmu, int idx)
{
 return ((idx >= 0) && (idx < cpu_pmu->num_events));
}
