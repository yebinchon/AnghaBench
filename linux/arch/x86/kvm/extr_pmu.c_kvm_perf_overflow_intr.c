
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct perf_event {struct kvm_pmc* overflow_handler_context; } ;
struct kvm_pmu {int irq_work; int global_status; int reprogram_pmi; } ;
struct kvm_pmc {int vcpu; int idx; } ;


 int KVM_REQ_PMI ;
 int KVM_REQ_PMU ;
 int __set_bit (int ,unsigned long*) ;
 int irq_work_queue (int *) ;
 int kvm_is_in_guest () ;
 int kvm_make_request (int ,int ) ;
 struct kvm_pmu* pmc_to_pmu (struct kvm_pmc*) ;
 int test_and_set_bit (int ,unsigned long*) ;

__attribute__((used)) static void kvm_perf_overflow_intr(struct perf_event *perf_event,
       struct perf_sample_data *data,
       struct pt_regs *regs)
{
 struct kvm_pmc *pmc = perf_event->overflow_handler_context;
 struct kvm_pmu *pmu = pmc_to_pmu(pmc);

 if (!test_and_set_bit(pmc->idx,
         (unsigned long *)&pmu->reprogram_pmi)) {
  __set_bit(pmc->idx, (unsigned long *)&pmu->global_status);
  kvm_make_request(KVM_REQ_PMU, pmc->vcpu);
  if (!kvm_is_in_guest())
   irq_work_queue(&pmc_to_pmu(pmc)->irq_work);
  else
   kvm_make_request(KVM_REQ_PMI, pmc->vcpu);
 }
}
