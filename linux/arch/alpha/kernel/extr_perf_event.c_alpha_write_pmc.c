
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* pmc_count_mask; unsigned long* pmc_count_shift; } ;


 int PERFMON_CMD_WRITE ;
 TYPE_1__* alpha_pmu ;
 int wrperfmon (int ,unsigned long) ;

__attribute__((used)) static inline void alpha_write_pmc(int idx, unsigned long val)
{
 val &= alpha_pmu->pmc_count_mask[idx];
 val <<= alpha_pmu->pmc_count_shift[idx];
 val |= (1<<idx);
 wrperfmon(PERFMON_CMD_WRITE, val);
}
