
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct pebs_record_nhm {int status; } ;
struct pebs_basic {int applicable_counters; } ;
struct TYPE_3__ {int pebs_format; } ;
struct TYPE_4__ {TYPE_1__ intel_cap; } ;


 TYPE_2__ x86_pmu ;

__attribute__((used)) static inline u64 get_pebs_status(void *n)
{
 if (x86_pmu.intel_cap.pebs_format < 4)
  return ((struct pebs_record_nhm *)n)->status;
 return ((struct pebs_basic *)n)->applicable_counters;
}
