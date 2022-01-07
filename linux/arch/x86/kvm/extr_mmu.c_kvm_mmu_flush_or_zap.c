
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct kvm_vcpu {int kvm; } ;


 int KVM_REQ_TLB_FLUSH ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 scalar_t__ kvm_mmu_remote_flush_or_zap (int ,struct list_head*,int) ;

__attribute__((used)) static void kvm_mmu_flush_or_zap(struct kvm_vcpu *vcpu,
     struct list_head *invalid_list,
     bool remote_flush, bool local_flush)
{
 if (kvm_mmu_remote_flush_or_zap(vcpu->kvm, invalid_list, remote_flush))
  return;

 if (local_flush)
  kvm_make_request(KVM_REQ_TLB_FLUSH, vcpu);
}
