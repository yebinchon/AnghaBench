
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct perf_event_attr {int size; int pinned; int exclude_idle; int exclude_host; int exclude_user; int exclude_kernel; unsigned int config; int sample_period; int type; } ;
struct perf_event {int dummy; } ;
struct kvm_pmc {int counter; int idx; struct perf_event* perf_event; } ;
typedef int attr ;
struct TYPE_2__ {int reprogram_pmi; } ;


 unsigned int HSW_IN_TX ;
 unsigned int HSW_IN_TX_CHECKPOINTED ;
 scalar_t__ IS_ERR (struct perf_event*) ;
 int PTR_ERR (struct perf_event*) ;
 int clear_bit (int ,unsigned long*) ;
 int current ;
 int kvm_perf_overflow ;
 int kvm_perf_overflow_intr ;
 struct perf_event* perf_event_create_kernel_counter (struct perf_event_attr*,int,int ,int ,struct kvm_pmc*) ;
 int pmc_bitmask (struct kvm_pmc*) ;
 TYPE_1__* pmc_to_pmu (struct kvm_pmc*) ;
 int pr_debug_ratelimited (char*,int ,int ) ;

__attribute__((used)) static void pmc_reprogram_counter(struct kvm_pmc *pmc, u32 type,
      unsigned config, bool exclude_user,
      bool exclude_kernel, bool intr,
      bool in_tx, bool in_tx_cp)
{
 struct perf_event *event;
 struct perf_event_attr attr = {
  .type = type,
  .size = sizeof(attr),
  .pinned = 1,
  .exclude_idle = 1,
  .exclude_host = 1,
  .exclude_user = exclude_user,
  .exclude_kernel = exclude_kernel,
  .config = config,
 };

 attr.sample_period = (-pmc->counter) & pmc_bitmask(pmc);

 if (in_tx)
  attr.config |= HSW_IN_TX;
 if (in_tx_cp) {





  attr.sample_period = 0;
  attr.config |= HSW_IN_TX_CHECKPOINTED;
 }

 event = perf_event_create_kernel_counter(&attr, -1, current,
       intr ? kvm_perf_overflow_intr :
       kvm_perf_overflow, pmc);
 if (IS_ERR(event)) {
  pr_debug_ratelimited("kvm_pmu: event creation failed %ld for pmc->idx = %d\n",
       PTR_ERR(event), pmc->idx);
  return;
 }

 pmc->perf_event = event;
 clear_bit(pmc->idx, (unsigned long*)&pmc_to_pmu(pmc)->reprogram_pmi);
}
