
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int nmi_injected; void* event_exit_inst_len; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;







 int KVM_REQ_EVENT ;
 int VECTORING_INFO_DELIVER_CODE_MASK ;
 int VECTORING_INFO_TYPE_MASK ;
 int VECTORING_INFO_VALID_MASK ;
 int VECTORING_INFO_VECTOR_MASK ;
 int kvm_clear_exception_queue (struct kvm_vcpu*) ;
 int kvm_clear_interrupt_queue (struct kvm_vcpu*) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_queue_interrupt (struct kvm_vcpu*,int,int) ;
 int kvm_requeue_exception (struct kvm_vcpu*,int) ;
 int kvm_requeue_exception_e (struct kvm_vcpu*,int,int) ;
 void* vmcs_read32 (int) ;
 int vmx_set_nmi_mask (struct kvm_vcpu*,int) ;

__attribute__((used)) static void __vmx_complete_interrupts(struct kvm_vcpu *vcpu,
          u32 idt_vectoring_info,
          int instr_len_field,
          int error_code_field)
{
 u8 vector;
 int type;
 bool idtv_info_valid;

 idtv_info_valid = idt_vectoring_info & VECTORING_INFO_VALID_MASK;

 vcpu->arch.nmi_injected = 0;
 kvm_clear_exception_queue(vcpu);
 kvm_clear_interrupt_queue(vcpu);

 if (!idtv_info_valid)
  return;

 kvm_make_request(KVM_REQ_EVENT, vcpu);

 vector = idt_vectoring_info & VECTORING_INFO_VECTOR_MASK;
 type = idt_vectoring_info & VECTORING_INFO_TYPE_MASK;

 switch (type) {
 case 130:
  vcpu->arch.nmi_injected = 1;





  vmx_set_nmi_mask(vcpu, 0);
  break;
 case 129:
  vcpu->arch.event_exit_inst_len = vmcs_read32(instr_len_field);

 case 131:
  if (idt_vectoring_info & VECTORING_INFO_DELIVER_CODE_MASK) {
   u32 err = vmcs_read32(error_code_field);
   kvm_requeue_exception_e(vcpu, vector, err);
  } else
   kvm_requeue_exception(vcpu, vector);
  break;
 case 128:
  vcpu->arch.event_exit_inst_len = vmcs_read32(instr_len_field);

 case 132:
  kvm_queue_interrupt(vcpu, vector, type == 128);
  break;
 default:
  break;
 }
}
