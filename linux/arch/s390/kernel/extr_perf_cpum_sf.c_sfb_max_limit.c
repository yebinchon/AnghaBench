
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int dummy; } ;


 unsigned long CPUM_SF_MAX_SDB ;
 unsigned long CPUM_SF_SDB_DIAG_FACTOR ;
 scalar_t__ SAMPL_DIAG_MODE (struct hw_perf_event*) ;

__attribute__((used)) static unsigned long sfb_max_limit(struct hw_perf_event *hwc)
{
 return SAMPL_DIAG_MODE(hwc) ? CPUM_SF_MAX_SDB * CPUM_SF_SDB_DIAG_FACTOR
        : CPUM_SF_MAX_SDB;
}
