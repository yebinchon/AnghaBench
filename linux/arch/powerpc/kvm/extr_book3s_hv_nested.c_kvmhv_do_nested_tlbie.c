
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 long H_PARAMETER ;
 long H_SUCCESS ;
 int kvmhv_emulate_priv_tlbie (struct kvm_vcpu*,int ,int ,int ) ;
 int kvmppc_get_gpr (struct kvm_vcpu*,int) ;

long kvmhv_do_nested_tlbie(struct kvm_vcpu *vcpu)
{
 int ret;

 ret = kvmhv_emulate_priv_tlbie(vcpu, kvmppc_get_gpr(vcpu, 4),
   kvmppc_get_gpr(vcpu, 5), kvmppc_get_gpr(vcpu, 6));
 if (ret)
  return H_PARAMETER;
 return H_SUCCESS;
}
