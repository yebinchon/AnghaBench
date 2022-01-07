
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vpe_id () ;

__attribute__((used)) static unsigned int mipsxx_pmu_swizzle_perf_idx(unsigned int idx)
{
 if (vpe_id() == 1)
  idx = (idx + 2) & 3;
 return idx;
}
