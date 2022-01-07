
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct kvm_vcpu {TYPE_1__* run; } ;
struct TYPE_2__ {scalar_t__ exit_reason; } ;


 int EXIT_QUALIFICATION ;
 scalar_t__ KVM_EXIT_SET_TPR ;
 unsigned long LMSW_SOURCE_DATA_SHIFT ;
 int WARN_ONCE (int,char*) ;
 int WARN_ON_ONCE (int ) ;
 int X86_CR0_TS ;
 int enable_unrestricted_guest ;
 int handle_set_cr0 (struct kvm_vcpu*,unsigned long) ;
 int handle_set_cr4 (struct kvm_vcpu*,unsigned long) ;
 int kvm_complete_insn_gp (struct kvm_vcpu*,int) ;
 void* kvm_get_cr8 (struct kvm_vcpu*) ;
 int kvm_lmsw (struct kvm_vcpu*,unsigned long) ;
 int kvm_read_cr0 (struct kvm_vcpu*) ;
 int kvm_read_cr0_bits (struct kvm_vcpu*,int ) ;
 unsigned long kvm_read_cr3 (struct kvm_vcpu*) ;
 unsigned long kvm_register_readl (struct kvm_vcpu*,int) ;
 int kvm_register_write (struct kvm_vcpu*,int,unsigned long) ;
 int kvm_set_cr3 (struct kvm_vcpu*,unsigned long) ;
 int kvm_set_cr8 (struct kvm_vcpu*,void*) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;
 int lapic_in_kernel (struct kvm_vcpu*) ;
 int trace_kvm_cr_read (int,unsigned long) ;
 int trace_kvm_cr_write (int,int) ;
 int vcpu_unimpl (struct kvm_vcpu*,char*,int,int) ;
 unsigned long vmcs_readl (int ) ;
 int vmx_set_cr0 (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int handle_cr(struct kvm_vcpu *vcpu)
{
 unsigned long exit_qualification, val;
 int cr;
 int reg;
 int err;
 int ret;

 exit_qualification = vmcs_readl(EXIT_QUALIFICATION);
 cr = exit_qualification & 15;
 reg = (exit_qualification >> 8) & 15;
 switch ((exit_qualification >> 4) & 3) {
 case 0:
  val = kvm_register_readl(vcpu, reg);
  trace_kvm_cr_write(cr, val);
  switch (cr) {
  case 0:
   err = handle_set_cr0(vcpu, val);
   return kvm_complete_insn_gp(vcpu, err);
  case 3:
   WARN_ON_ONCE(enable_unrestricted_guest);
   err = kvm_set_cr3(vcpu, val);
   return kvm_complete_insn_gp(vcpu, err);
  case 4:
   err = handle_set_cr4(vcpu, val);
   return kvm_complete_insn_gp(vcpu, err);
  case 8: {
    u8 cr8_prev = kvm_get_cr8(vcpu);
    u8 cr8 = (u8)val;
    err = kvm_set_cr8(vcpu, cr8);
    ret = kvm_complete_insn_gp(vcpu, err);
    if (lapic_in_kernel(vcpu))
     return ret;
    if (cr8_prev <= cr8)
     return ret;





    vcpu->run->exit_reason = KVM_EXIT_SET_TPR;
    return 0;
   }
  }
  break;
 case 2:
  WARN_ONCE(1, "Guest should always own CR0.TS");
  vmx_set_cr0(vcpu, kvm_read_cr0_bits(vcpu, ~X86_CR0_TS));
  trace_kvm_cr_write(0, kvm_read_cr0(vcpu));
  return kvm_skip_emulated_instruction(vcpu);
 case 1:
  switch (cr) {
  case 3:
   WARN_ON_ONCE(enable_unrestricted_guest);
   val = kvm_read_cr3(vcpu);
   kvm_register_write(vcpu, reg, val);
   trace_kvm_cr_read(cr, val);
   return kvm_skip_emulated_instruction(vcpu);
  case 8:
   val = kvm_get_cr8(vcpu);
   kvm_register_write(vcpu, reg, val);
   trace_kvm_cr_read(cr, val);
   return kvm_skip_emulated_instruction(vcpu);
  }
  break;
 case 3:
  val = (exit_qualification >> LMSW_SOURCE_DATA_SHIFT) & 0x0f;
  trace_kvm_cr_write(0, (kvm_read_cr0(vcpu) & ~0xful) | val);
  kvm_lmsw(vcpu, val);

  return kvm_skip_emulated_instruction(vcpu);
 default:
  break;
 }
 vcpu->run->exit_reason = 0;
 vcpu_unimpl(vcpu, "unhandled control register: op %d cr %d\n",
        (int)(exit_qualification >> 4) & 3, cr);
 return 0;
}
