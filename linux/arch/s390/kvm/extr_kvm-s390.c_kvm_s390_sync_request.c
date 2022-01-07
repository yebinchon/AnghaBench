
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_make_request (int,struct kvm_vcpu*) ;
 int kvm_s390_vcpu_request (struct kvm_vcpu*) ;

void kvm_s390_sync_request(int req, struct kvm_vcpu *vcpu)
{
 kvm_make_request(req, vcpu);
 kvm_s390_vcpu_request(vcpu);
}
