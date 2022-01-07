
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef int u32 ;
struct vmcs12 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef scalar_t__ gpa_t ;


 int VMX_INSTRUCTION_INFO ;
 unsigned long kvm_register_read (struct kvm_vcpu*,int) ;
 scalar_t__ kvm_vcpu_read_guest (struct kvm_vcpu*,scalar_t__,unsigned long*,int) ;
 int nested_cpu_has_shadow_vmcs (struct vmcs12*) ;
 int vmcs_read32 (int ) ;

__attribute__((used)) static bool nested_vmx_exit_handled_vmcs_access(struct kvm_vcpu *vcpu,
 struct vmcs12 *vmcs12, gpa_t bitmap)
{
 u32 vmx_instruction_info;
 unsigned long field;
 u8 b;

 if (!nested_cpu_has_shadow_vmcs(vmcs12))
  return 1;


 vmx_instruction_info = vmcs_read32(VMX_INSTRUCTION_INFO);
 field = kvm_register_read(vcpu, (((vmx_instruction_info) >> 28) & 0xf));


 if (field >> 15)
  return 1;

 if (kvm_vcpu_read_guest(vcpu, bitmap + field/8, &b, 1))
  return 1;

 return 1 & (b >> (field & 7));
}
