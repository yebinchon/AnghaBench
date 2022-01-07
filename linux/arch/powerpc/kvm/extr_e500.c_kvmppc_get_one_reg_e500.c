
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union kvmppc_one_reg {int dummy; } kvmppc_one_reg ;
typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int kvmppc_get_one_reg_e500_tlb (struct kvm_vcpu*,int ,union kvmppc_one_reg*) ;

__attribute__((used)) static int kvmppc_get_one_reg_e500(struct kvm_vcpu *vcpu, u64 id,
       union kvmppc_one_reg *val)
{
 int r = kvmppc_get_one_reg_e500_tlb(vcpu, id, val);
 return r;
}
