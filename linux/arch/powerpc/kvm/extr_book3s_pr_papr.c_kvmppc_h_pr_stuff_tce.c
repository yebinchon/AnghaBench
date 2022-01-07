
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int EMULATE_FAIL ;

__attribute__((used)) static int kvmppc_h_pr_stuff_tce(struct kvm_vcpu *vcpu)
{
 return EMULATE_FAIL;
}
