
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int l1csr0; } ;
struct kvm_vcpu {int dummy; } ;


 int EMULATE_DONE ;
 int L1CSR0_CUL ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

__attribute__((used)) static int kvmppc_e500_emul_dcbtls(struct kvm_vcpu *vcpu)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);


 vcpu_e500->l1csr0 |= L1CSR0_CUL;
 return EMULATE_DONE;
}
