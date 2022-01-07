
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int config; } ;
struct perf_event {TYPE_1__ attr; } ;


 int UNCORE_FIXED_EVENT ;
 int UNCORE_FREERUNNING_UMASK_START ;

__attribute__((used)) static inline bool is_freerunning_event(struct perf_event *event)
{
 u64 cfg = event->attr.config;

 return ((cfg & UNCORE_FIXED_EVENT) == UNCORE_FIXED_EVENT) &&
        (((cfg >> 8) & 0xff) >= UNCORE_FREERUNNING_UMASK_START);
}
