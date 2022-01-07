
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef unsigned long u16 ;
struct vcpu_vmx {int idt_vectoring_info; } ;
struct TYPE_2__ {int nmi_injected; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EXIT_QUALIFICATION ;
 int IDT_VECTORING_ERROR_CODE ;





 int TASK_SWITCH_GATE ;
 int VECTORING_INFO_DELIVER_CODE_MASK ;
 int VECTORING_INFO_TYPE_MASK ;
 int VECTORING_INFO_VALID_MASK ;
 int VECTORING_INFO_VECTOR_MASK ;
 int WARN_ON (int) ;
 int kvm_clear_exception_queue (struct kvm_vcpu*) ;
 int kvm_clear_interrupt_queue (struct kvm_vcpu*) ;
 int kvm_task_switch (struct kvm_vcpu*,unsigned long,int,int,int,int) ;
 int skip_emulated_instruction (struct kvm_vcpu*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmcs_read32 (int ) ;
 unsigned long vmcs_readl (int ) ;
 int vmx_set_nmi_mask (struct kvm_vcpu*,int) ;

__attribute__((used)) static int handle_task_switch(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 unsigned long exit_qualification;
 bool has_error_code = 0;
 u32 error_code = 0;
 u16 tss_selector;
 int reason, type, idt_v, idt_index;

 idt_v = (vmx->idt_vectoring_info & VECTORING_INFO_VALID_MASK);
 idt_index = (vmx->idt_vectoring_info & VECTORING_INFO_VECTOR_MASK);
 type = (vmx->idt_vectoring_info & VECTORING_INFO_TYPE_MASK);

 exit_qualification = vmcs_readl(EXIT_QUALIFICATION);

 reason = (u32)exit_qualification >> 30;
 if (reason == TASK_SWITCH_GATE && idt_v) {
  switch (type) {
  case 130:
   vcpu->arch.nmi_injected = 0;
   vmx_set_nmi_mask(vcpu, 1);
   break;
  case 132:
  case 128:
   kvm_clear_interrupt_queue(vcpu);
   break;
  case 131:
   if (vmx->idt_vectoring_info &
       VECTORING_INFO_DELIVER_CODE_MASK) {
    has_error_code = 1;
    error_code =
     vmcs_read32(IDT_VECTORING_ERROR_CODE);
   }

  case 129:
   kvm_clear_exception_queue(vcpu);
   break;
  default:
   break;
  }
 }
 tss_selector = exit_qualification;

 if (!idt_v || (type != 131 &&
         type != 132 &&
         type != 130))
  WARN_ON(!skip_emulated_instruction(vcpu));





 return kvm_task_switch(vcpu, tss_selector,
          type == 128 ? idt_index : -1,
          reason, has_error_code, error_code);
}
