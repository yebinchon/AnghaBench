
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int ESR_EL1 ;
 int ESR_ELx_EC_SHIFT ;
 int ESR_ELx_EC_UNKNOWN ;
 int ESR_ELx_IL ;
 unsigned long PSTATE_FAULT_BITS_64 ;
 int except_type_sync ;
 int get_except_vector (struct kvm_vcpu*,int ) ;
 scalar_t__ kvm_vcpu_trap_il_is32bit (struct kvm_vcpu*) ;
 unsigned long* vcpu_cpsr (struct kvm_vcpu*) ;
 int * vcpu_pc (struct kvm_vcpu*) ;
 int vcpu_write_elr_el1 (struct kvm_vcpu*,int ) ;
 int vcpu_write_spsr (struct kvm_vcpu*,unsigned long) ;
 int vcpu_write_sys_reg (struct kvm_vcpu*,int,int ) ;

__attribute__((used)) static void inject_undef64(struct kvm_vcpu *vcpu)
{
 unsigned long cpsr = *vcpu_cpsr(vcpu);
 u32 esr = (ESR_ELx_EC_UNKNOWN << ESR_ELx_EC_SHIFT);

 vcpu_write_elr_el1(vcpu, *vcpu_pc(vcpu));
 *vcpu_pc(vcpu) = get_except_vector(vcpu, except_type_sync);

 *vcpu_cpsr(vcpu) = PSTATE_FAULT_BITS_64;
 vcpu_write_spsr(vcpu, cpsr);





 if (kvm_vcpu_trap_il_is32bit(vcpu))
  esr |= ESR_ELx_IL;

 vcpu_write_sys_reg(vcpu, esr, ESR_EL1);
}
