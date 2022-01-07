
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct intel_uncore_box {TYPE_2__* pmu; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int num_freerunning_types; } ;



__attribute__((used)) static inline int uncore_num_freerunning_types(struct intel_uncore_box *box,
            struct perf_event *event)
{
 return box->pmu->type->num_freerunning_types;
}
