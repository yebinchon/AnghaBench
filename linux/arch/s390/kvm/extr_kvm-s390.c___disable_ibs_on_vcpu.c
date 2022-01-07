
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int KVM_REQ_DISABLE_IBS ;
 int KVM_REQ_ENABLE_IBS ;
 int kvm_check_request (int ,struct kvm_vcpu*) ;
 int kvm_s390_sync_request (int ,struct kvm_vcpu*) ;

__attribute__((used)) static void __disable_ibs_on_vcpu(struct kvm_vcpu *vcpu)
{
 kvm_check_request(KVM_REQ_ENABLE_IBS, vcpu);
 kvm_s390_sync_request(KVM_REQ_DISABLE_IBS, vcpu);
}
