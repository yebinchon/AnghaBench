
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;
struct perf_event {TYPE_1__ hw; } ;
struct intel_uncore_box {int dummy; } ;


 unsigned int uncore_freerunning_idx (int ) ;
 unsigned int uncore_freerunning_type (int ) ;
 unsigned int uncore_num_freerunning (struct intel_uncore_box*,struct perf_event*) ;
 unsigned int uncore_num_freerunning_types (struct intel_uncore_box*,struct perf_event*) ;

__attribute__((used)) static inline bool check_valid_freerunning_event(struct intel_uncore_box *box,
       struct perf_event *event)
{
 unsigned int type = uncore_freerunning_type(event->hw.config);
 unsigned int idx = uncore_freerunning_idx(event->hw.config);

 return (type < uncore_num_freerunning_types(box, event)) &&
        (idx < uncore_num_freerunning(box, event));
}
