
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_nested_guest {int need_tlb_flush; } ;
struct TYPE_2__ {int need_tlb_flush; } ;
struct kvm {TYPE_1__ arch; } ;
typedef int cpumask_t ;


 int CPU_FTR_ARCH_300 ;
 int cpu_first_thread_sibling (int) ;
 scalar_t__ cpu_has_feature (int ) ;
 int cpumask_clear_cpu (int,int *) ;
 scalar_t__ cpumask_test_cpu (int,int *) ;
 int flush_guest_tlb (struct kvm*) ;

void kvmppc_check_need_tlb_flush(struct kvm *kvm, int pcpu,
     struct kvm_nested_guest *nested)
{
 cpumask_t *need_tlb_flush;







 if (cpu_has_feature(CPU_FTR_ARCH_300))
  pcpu = cpu_first_thread_sibling(pcpu);

 if (nested)
  need_tlb_flush = &nested->need_tlb_flush;
 else
  need_tlb_flush = &kvm->arch.need_tlb_flush;

 if (cpumask_test_cpu(pcpu, need_tlb_flush)) {
  flush_guest_tlb(kvm);


  cpumask_clear_cpu(pcpu, need_tlb_flush);
 }
}
