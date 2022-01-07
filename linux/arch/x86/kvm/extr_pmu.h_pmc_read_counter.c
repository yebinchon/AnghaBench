
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_pmc {int counter; scalar_t__ perf_event; } ;


 scalar_t__ perf_event_read_value (scalar_t__,int*,int*) ;
 int pmc_bitmask (struct kvm_pmc*) ;

__attribute__((used)) static inline u64 pmc_read_counter(struct kvm_pmc *pmc)
{
 u64 counter, enabled, running;

 counter = pmc->counter;
 if (pmc->perf_event)
  counter += perf_event_read_value(pmc->perf_event,
       &enabled, &running);

 return counter & pmc_bitmask(pmc);
}
