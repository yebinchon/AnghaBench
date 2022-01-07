
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct intel_uncore_box {int dummy; } ;


 int EINVAL ;
 scalar_t__ is_freerunning_event (struct perf_event*) ;

__attribute__((used)) static inline int uncore_freerunning_hw_config(struct intel_uncore_box *box,
            struct perf_event *event)
{
 if (is_freerunning_event(event))
  return 0;

 return -EINVAL;
}
