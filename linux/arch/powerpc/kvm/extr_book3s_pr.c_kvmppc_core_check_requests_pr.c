
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int KVM_REQ_TLB_FLUSH ;
 scalar_t__ kvm_check_request (int ,struct kvm_vcpu*) ;
 int kvmppc_mmu_pte_flush (struct kvm_vcpu*,int ,int ) ;

__attribute__((used)) static int kvmppc_core_check_requests_pr(struct kvm_vcpu *vcpu)
{
 int r = 1;



 if (kvm_check_request(KVM_REQ_TLB_FLUSH, vcpu))
  kvmppc_mmu_pte_flush(vcpu, 0, 0);

 return r;
}
