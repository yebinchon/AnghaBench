
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;
typedef int gfn_t ;


 int KVM_REQ_TRIPLE_FAULT ;
 int kvm_is_visible_gfn (int ,int ) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;

__attribute__((used)) static int mmu_check_root(struct kvm_vcpu *vcpu, gfn_t root_gfn)
{
 int ret = 0;

 if (!kvm_is_visible_gfn(vcpu->kvm, root_gfn)) {
  kvm_make_request(KVM_REQ_TRIPLE_FAULT, vcpu);
  ret = 1;
 }

 return ret;
}
