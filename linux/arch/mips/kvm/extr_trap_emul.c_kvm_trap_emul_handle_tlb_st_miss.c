
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_trap_emul_handle_tlb_miss (struct kvm_vcpu*,int) ;

__attribute__((used)) static int kvm_trap_emul_handle_tlb_st_miss(struct kvm_vcpu *vcpu)
{
 return kvm_trap_emul_handle_tlb_miss(vcpu, 1);
}
