
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int * context_id; } ;


 int SID_CONTEXTS ;
 int __destroy_context (int ) ;
 int kvmppc_mmu_hpte_destroy (struct kvm_vcpu*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 TYPE_1__* to_book3s (struct kvm_vcpu*) ;

void kvmppc_mmu_destroy_pr(struct kvm_vcpu *vcpu)
{
 int i;

 kvmppc_mmu_hpte_destroy(vcpu);
 preempt_disable();
 for (i = 0; i < SID_CONTEXTS; i++)
  __destroy_context(to_book3s(vcpu)->context_id[i]);
 preempt_enable();
}
