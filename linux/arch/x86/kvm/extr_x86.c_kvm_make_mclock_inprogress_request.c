
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int KVM_REQ_MCLOCK_INPROGRESS ;
 int kvm_make_all_cpus_request (struct kvm*,int ) ;

void kvm_make_mclock_inprogress_request(struct kvm *kvm)
{
 kvm_make_all_cpus_request(kvm, KVM_REQ_MCLOCK_INPROGRESS);
}
