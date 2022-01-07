
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* pmc_count_shift; unsigned long* pmc_count_mask; } ;


 int PERFMON_CMD_READ ;
 TYPE_1__* alpha_pmu ;
 unsigned long wrperfmon (int ,int ) ;

__attribute__((used)) static inline unsigned long alpha_read_pmc(int idx)
{
 unsigned long val;

 val = wrperfmon(PERFMON_CMD_READ, 0);
 val >>= alpha_pmu->pmc_count_shift[idx];
 val &= alpha_pmu->pmc_count_mask[idx];
 return val;
}
