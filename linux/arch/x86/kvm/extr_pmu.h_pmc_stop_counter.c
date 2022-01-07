
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pmc {int * perf_event; int counter; } ;


 int perf_event_release_kernel (int *) ;
 int pmc_read_counter (struct kvm_pmc*) ;

__attribute__((used)) static inline void pmc_stop_counter(struct kvm_pmc *pmc)
{
 if (pmc->perf_event) {
  pmc->counter = pmc_read_counter(pmc);
  perf_event_release_kernel(pmc->perf_event);
  pmc->perf_event = ((void*)0);
 }
}
