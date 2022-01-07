
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct cpu_hw_events {unsigned long pebs_enabled; int pebs_record_size; } ;
struct TYPE_3__ {int pebs_format; } ;
struct TYPE_4__ {TYPE_1__ intel_cap; } ;


 int PEBS_COUNTER_MASK ;
 int cpu_hw_events ;
 unsigned long get_pebs_status (void*) ;
 scalar_t__ test_bit (int,unsigned long*) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 TYPE_2__ x86_pmu ;

__attribute__((used)) static inline void *
get_next_pebs_record_by_bit(void *base, void *top, int bit)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 void *at;
 u64 pebs_status;





 if (x86_pmu.intel_cap.pebs_format < 1)
  return base;

 if (base == ((void*)0))
  return ((void*)0);

 for (at = base; at < top; at += cpuc->pebs_record_size) {
  unsigned long status = get_pebs_status(at);

  if (test_bit(bit, (unsigned long *)&status)) {

   if (x86_pmu.intel_cap.pebs_format >= 3)
    return at;

   if (status == (1 << bit))
    return at;


   pebs_status = status & cpuc->pebs_enabled;
   pebs_status &= PEBS_COUNTER_MASK;
   if (pebs_status == (1 << bit))
    return at;
  }
 }
 return ((void*)0);
}
