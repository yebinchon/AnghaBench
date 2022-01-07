
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNCORE_PMC_IDX_FREERUNNING ;

__attribute__((used)) static inline bool uncore_pmc_freerunning(int idx)
{
 return idx == UNCORE_PMC_IDX_FREERUNNING;
}
