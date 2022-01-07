
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
typedef enum exception_type { ____Placeholder_exception_type } exception_type ;


 int CURRENT_EL_SP_EL0_VECTOR ;
 int CURRENT_EL_SP_ELx_VECTOR ;
 int LOWER_EL_AArch32_VECTOR ;
 int LOWER_EL_AArch64_VECTOR ;
 int PSR_MODE32_BIT ;



 int PSR_MODE_MASK ;
 int VBAR_EL1 ;
 int* vcpu_cpsr (struct kvm_vcpu*) ;
 int vcpu_read_sys_reg (struct kvm_vcpu*,int ) ;

__attribute__((used)) static u64 get_except_vector(struct kvm_vcpu *vcpu, enum exception_type type)
{
 u64 exc_offset;

 switch (*vcpu_cpsr(vcpu) & (PSR_MODE_MASK | PSR_MODE32_BIT)) {
 case 128:
  exc_offset = CURRENT_EL_SP_EL0_VECTOR;
  break;
 case 129:
  exc_offset = CURRENT_EL_SP_ELx_VECTOR;
  break;
 case 130:
  exc_offset = LOWER_EL_AArch64_VECTOR;
  break;
 default:
  exc_offset = LOWER_EL_AArch32_VECTOR;
 }

 return vcpu_read_sys_reg(vcpu, VBAR_EL1) + exc_offset + type;
}
