
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;



__attribute__((used)) static int kvmppc_core_check_requests_hv(struct kvm_vcpu *vcpu)
{

 return 1;
}
